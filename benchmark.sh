#!/bin/bash

JAR="QAlloy.jar"
N=10
T=60000

OPTSTRING=":n:t:j:h"

while getopts ${OPTSTRING} opt; do
  case ${opt} in
    n)
      N=${OPTARG}
      ;;
    t)
      T=${OPTARG}
      ;;
    j)
      JAR=${OPTARG}
      ;;
    h)
      echo "================================================================
 QAlloy-F Benchmark
================================================================
% SYNOPSIS
+    benchmark [-n[number]] [-t[timeout]] [-j[JAR]] alsFiles ..
%
% DESCRIPTION
%    Benchmark the solution enumeration methods  in QAlloy against the specified models.
%
% OPTIONS
%    -n [number]                   Number of iterations per command
%    -t [timeout]                  Set timeout for each run
%    -j [JAR]                      Set QAlloy JAR name
%    -h                            Print this help
%
% EXAMPLE
%    benchmark -n 30 -t 30000 heater.als"
      exit 1
      ;;
    :)
      echo "Option -${OPTARG} requires an argument."
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done

#echo ${N} 
#echo ${T} 
#echo ${JAR}
shift $(($OPTIND - 1))
#echo "$@"

java -cp ${JAR} edu.mit.csail.sdg.alloy4whole.Benchmark ${N} ${T} 2 "$@"
