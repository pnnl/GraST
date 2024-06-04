# GraST
GrasT is a c++ implementations of some streaming graph algorithms. Currently, GraST implements two graph problems: 1) approximate maximum weight matching, and 2) approximate minimum weight edge cover. GraST supporst two ways to simulate streams: 1) edge read one by one from a matrix market format file, which is used to report memory and overall runtime performance, and 2) read all the edge from a file (only support mtx) and then stream from memory, which is used to compare the algorithmic time to the offline algorithms. Please see the following paper for implementation details and results for streaming matching and edge cover. Also, if you use GraST please cite this paper.

  
