/*
 * Copyright (C) 2022  Ferdous, S M <ferdous.csebuet@gmail.com>
 * Author: Ferdous, S M <ferdous.csebuet@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


#include "GraST/StreamIn.h"
#include "GraST/StreamMatch.h"
#include "cxxopts/cxxopts.hpp"
#include "GraST/MemUsage.h"

#include<omp.h>
#include<iostream>
#include<vector>
#include<stdlib.h>
#include<filesystem>

std::fstream fWrite;

void writeResults(std::string inFile, std::string alg,Stat stat, float epsilon) {
  fWrite<<inFile<<","<<stat.n<<","<<stat.m <<","<<epsilon
        <<","<<alg<<","<<stat.edgeRetained<<","<<stat.streamReadTime<<","
        <<stat.streamProcessTime<<","<<stat.streamReadProcessTime<<","
        <<stat.streamPostProcessTime<<","<<stat.totalWeight<<","<<stat.card<<","<<stat.mem<<","<<stat.dualTight<<","<<stat.ub<<","<<stat.simStream<<std::endl;
}

void printResults(std::string inFile, std::string alg,Stat stat, float epsilon) {
  std::cout<<"\n*************************************************************"<<std::endl;
  std::cout<<"Problem Name: "<<inFile<<"\n"
            <<"#Nodes: "<<stat.n<<"\n"
            <<"#Edges: "<<stat.m<<"\n"
            <<"Epsilon: "<<epsilon<<"\n"
            <<"Name of Alg.: "<<alg<<"\n"
            <<"Is simulated?: "<<stat.simStream<<"\n"
            <<"#Edges reatined in stack: "<<stat.edgeRetained<<"\n"
            <<"Stream read time: "<<stat.streamReadTime<<"\n"
            <<"Stream read+process time: "<<stat.streamReadProcessTime<<"\n"
            <<"Stream post-process time: "<<stat.streamPostProcessTime<<"\n"
            <<"Stream total weight: "<<stat.totalWeight<<"\n"
            <<"Cardinality: "<<stat.card<<"\n"
            <<"Maximum Resident Set Size (KB): "<<stat.mem<<"\n";
  std::cout<<"*************************************************************"<<std::endl;
          
}

int main(int argC, char *argV[]) {

  auto baseline = getPeakRSS();
  cxxopts::Options options(argV[0], "Streaming matching with lexicographic maximal matching");
  options.add_options()
    ("f,file", "file name", cxxopts::value<std::string>())
    ("a,algorithm", "algo name: ps fb", cxxopts::value<std::string>()->default_value("ps"))
    ("e,eps", "epsilon value", cxxopts::value<float>()->default_value("0.001"))
    ("sim,simst", "simulate streaming by loading the full graph in memory", cxxopts::value<bool>()->default_value("false"))
    ("tight,dual-tight", "if set use the tight rule for dual update and provide the lower bound; if false use the usual", cxxopts::value<bool>()->default_value("false"))
    ("feat,feat-mat", "Running matching on ML feature dataset ", cxxopts::value<bool>()->default_value("false"))
    ("out,res_out","output results on a file", cxxopts::value<std::string>()->default_value(""))  
    ("h,help", "print usage")
    ;
  
  std::string fname,alg,resFile;
  float epsilon; 
  bool sim,feat,tight;
  try{ 
    auto result = options.parse(argC,argV);
    if (result.count("help")) {
          std::cout<< options.help()<<"\n"; 
          std::exit(0);
    }
    fname = result["file"].as<std::string>();
    alg = result["algorithm"].as<std::string>();
    epsilon = result["eps"].as<float>();
    sim = result["simst"].as<bool>();
    tight = result["dual-tight"].as<bool>();
    feat = result["feat-mat"].as<bool>();
    resFile = result["res_out"].as<std::string>();
  }
  catch(cxxopts::exceptions::exception &exp) {
    std::cout<<options.help()<<std::endl;
    exit(1);
  }

  StreamMatch smatch(fname);
  std::vector<WeightEdgeSim> matchEdges;
  std::vector<EndPoint> matchEndvtx;
  Stat stat;
  SUM_T totWeight = 0.0;
  NODE_T card=0;
  VAL_T offset = 0;

  if(alg == "ps") {
    std::cout<<"Algorithm is chosen: "<<alg<<std::endl;
    if (feat) {
      std::cout<<"Machine Learning dataset is used for ps algorithm."<<std::endl;
      if(fname.find("mnist") != std::string::npos) {
        offset = 255*255*784; 
        //std::cout<<offset<<"\n";
      }
      smatch.MatchGW<FeatureMatStream>(matchEdges,stat,epsilon,offset);
    }
    else if(sim){
      std::cout<<"Simulated Stream setting. The reported read+process time is the process time."<<std::endl;
      smatch.MatchGW<StreamIn>(matchEdges,stat,epsilon);
    }
    else {
      std::cout<<"True Stream setting."<<std::endl;
      smatch.MatchGW<TrueStreamIn>(matchEdges,stat,epsilon,0,tight);
    }

    //Match Stats
    for(auto e:matchEdges) {
      totWeight += e.weight;
      card++;
    }
  }
  else if(alg =="fb") {
    std::cout<<"Algorithm is chosen: "<<alg<<std::endl;
    if(sim){
      std::cout<<"Simulated Stream setting. The reported read+process time is the process time."<<std::endl;
      smatch.MatchFb<StreamIn>(matchEndvtx,stat,epsilon);
    }
    else {
      std::cout<<"True Stream setting."<<std::endl;
      smatch.MatchFb<TrueStreamIn>(matchEndvtx,stat,epsilon);
    }

    for(NODE_T i = 0; i<stat.n; i++) {
      if(matchEndvtx[i].v != -1) {
        totWeight = totWeight + matchEndvtx[i].weight; 
        card++;
      } 
    }
    totWeight = totWeight/2.0;
    card = card/2;
  }
  stat.totalWeight = totWeight;
  stat.card = card;
  stat.mem = getPeakRSS()-baseline;
  stat.simStream = sim;
  stat.dualTight = tight;

  //std::cout<<std::fixed<<stat.n<<" "<<stat.m<<" "<<totWeight<<" "<<card<<" "<<stat.stackSize<<" "<<stat.streamReadTime<<" "<<stat.streamReadProcessTime<<" "<<stat.streamPostProcessTime<<" "<<stat.mem<<" "<<stat.ub<<std::endl;
  
  printResults(getLastPartOfFilepath(fname),alg,stat,epsilon);

  if(resFile.empty() == false) {
    bool fexist = false;
    if(std::filesystem::exists(resFile)) {
       fexist = true; 
    }
    fWrite.open(resFile,std::fstream::out | std::fstream::app);
    if(fWrite.is_open() == false) {
      std::cout<<"Could not open the result output file"<<std::endl; 
      return 1;
    }   
    if(fexist == false) 
      fWrite<<"graph,n,m,eps,algorithm,edge-reatined,read,process,read+process,postprocess,weight,card,mem,tight,ub,simulate"<<std::endl;
    writeResults(getLastPartOfFilepath(fname),alg,stat,epsilon);
  }
  return 0;
}
