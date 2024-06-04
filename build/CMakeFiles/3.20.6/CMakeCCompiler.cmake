set(CMAKE_C_COMPILER "/apps/spack/bell/apps/openmpi/3.1.6-gcc-9.3.0-3xlew3m/bin/mpicc")
set(CMAKE_C_COMPILER_ARG1 "")
set(CMAKE_C_COMPILER_ID "GNU")
set(CMAKE_C_COMPILER_VERSION "9.3.0")
set(CMAKE_C_COMPILER_VERSION_INTERNAL "")
set(CMAKE_C_COMPILER_WRAPPER "")
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT "11")
set(CMAKE_C_COMPILE_FEATURES "c_std_90;c_function_prototypes;c_std_99;c_restrict;c_variadic_macros;c_std_11;c_static_assert")
set(CMAKE_C90_COMPILE_FEATURES "c_std_90;c_function_prototypes")
set(CMAKE_C99_COMPILE_FEATURES "c_std_99;c_restrict;c_variadic_macros")
set(CMAKE_C11_COMPILE_FEATURES "c_std_11;c_static_assert")

set(CMAKE_C_PLATFORM_ID "Linux")
set(CMAKE_C_SIMULATE_ID "")
set(CMAKE_C_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_C_SIMULATE_VERSION "")




set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_C_COMPILER_AR "/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/bin/gcc-ar")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_C_COMPILER_RANLIB "/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/bin/gcc-ranlib")
set(CMAKE_LINKER "/apps/cent7/xalt/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCC 1)
set(CMAKE_C_COMPILER_LOADED 1)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_C_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_C_COMPILER_ENV_VAR "CC")

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_C_COMPILER_ID_RUN 1)
set(CMAKE_C_SOURCE_FILE_EXTENSIONS c;m)
set(CMAKE_C_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_C_LINKER_PREFERENCE 10)

# Save compiler ABI information.
set(CMAKE_C_SIZEOF_DATA_PTR "8")
set(CMAKE_C_COMPILER_ABI "ELF")
set(CMAKE_C_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_C_LIBRARY_ARCHITECTURE "")

if(CMAKE_C_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_C_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_C_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_C_COMPILER_ABI}")
endif()

if(CMAKE_C_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_C_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_C_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_C_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES "/apps/spack/bell/apps/openmpi/3.1.6-gcc-9.3.0-3xlew3m/include;/apps/spack/bell/apps/zlib/1.2.11-gcc-9.3.0-7x3gabj/include;/apps/spack/bell-20231031/apps/mpc/1.1.0-gcc-4.8.5-falbgx3/include;/apps/spack/bell-20231031/apps/mpfr/3.1.6-gcc-4.8.5-cslxql4/include;/apps/spack/bell-20231031/apps/gmp/6.2.1-gcc-4.8.5-dse55eg/include;/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/lib/gcc/x86_64-pc-linux-gnu/9.3.0/include;/usr/local/include;/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/include;/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/lib/gcc/x86_64-pc-linux-gnu/9.3.0/include-fixed;/usr/include")
set(CMAKE_C_IMPLICIT_LINK_LIBRARIES "mpi;gcc;gcc_s;pthread;c;gcc;gcc_s")
set(CMAKE_C_IMPLICIT_LINK_DIRECTORIES "/apps/spack/bell/apps/hwloc/1.11.11-gcc-9.3.0-ubnsyw3/lib;/apps/spack/bell/apps/zlib/1.2.11-gcc-9.3.0-7x3gabj/lib;/usr/lib64;/apps/spack/bell/apps/openmpi/3.1.6-gcc-9.3.0-3xlew3m/lib;/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/lib64;/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/lib/gcc/x86_64-pc-linux-gnu/9.3.0;/lib64;/apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/lib;/apps/spack/bell-20231031/apps/mpc/1.1.0-gcc-4.8.5-falbgx3/lib;/apps/spack/bell-20231031/apps/mpfr/3.1.6-gcc-4.8.5-cslxql4/lib;/apps/spack/bell-20231031/apps/gmp/6.2.1-gcc-4.8.5-dse55eg/lib")
set(CMAKE_C_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
