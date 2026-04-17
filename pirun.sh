#!/bin/bash
#SBATCH -A uppmax2026-1-92       # Project ID
#SBATCH -N 1                     # Number of nodes
#SBATCH --ntasks=8
#SBATCH --ntasks-per-node=8      # MPI tasks per node
#SBATCH --hint=nomultithread
#SBATCH --cpus-per-task=1
#SBATCH -t 00:20:00              # Time limit (hh:mm:ss)

# Load MPI module
module load OpenMPI/5.0.8-GCC-14.3.0

for n in 16 8 4 2; do 
    echo "$n" 
    mpirun -n $n ./ pi 
done