#!/bin/bash
#
#  Compile the program with ICPC.
#
icpc -openmp -parallel heated_plate_openmp.cpp -lm
#
mv a.out heated_plate
#
#  Run with 1, 2, and 4 threads.
#
echo "Run with 1 thread."
export OMP_NUM_THREADS=1
./heated_plate > heated_plate_local_icpc_output.txt
#
echo "Run with 2 threads."
export OMP_NUM_THREADS=2
./heated_plate >> heated_plate_local_icpc_output.txt
#
echo "Run with 4 threads."
export OMP_NUM_THREADS=4
./heated_plate >> heated_plate_local_icpc_output.txt
#
#  Discard the executable file.
#
rm heated_plate
#
echo "Program output written to heated_plate_local_icpc_output.txt"
