#!/bin/bash
#SBATCH -A uppmax2026-1-92       # Project ID
#SBATCH -N 1                     # Number of nodes
#SBATCH --ntasks=32
#SBATCH --ntasks-per-node=32      # MPI tasks per node
#SBATCH --cpus-per-task=1
#SBATCH -t 00:20:00              # Time limit (hh:mm:ss)

# Load MPI module
module load OpenMPI/5.0.8-GCC-14.3.0

for n in 32 16 8 4; do
    echo "$n"
    mpirun --bind-to none -n $n ./pi 
done
