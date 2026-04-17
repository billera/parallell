#!/bin/bash
#SBATCH -A uppmax2026-1-92
#SBATCH -N 1
#SBATCH --ntasks=32
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH -t 00:15:00
#SBATCH -J pi_bench
#SBATCH -o pi_bench_%j.out

module load OpenMPI/5.0.8-GCC-14.3.0
 
for p in 1 2 4 8 16 32; do
    echo "orig, p = $p"
    mpirun -n $p ./pi
done
 
for p in 1 2 4 8 16 32; do
    echo "alt, p= $p"
    mpirun -n $p ./pi_reduce
done