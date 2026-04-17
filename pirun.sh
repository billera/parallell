module load OpenMPI/5.0.8-GCC-14.3.0
 
for p in 1 2 4 8 16 32; do
    echo "orig, p = $p"
    mpirun -n $p ./pi
done
 
for p in 1 2 4 8 16 32; do
    echo "alt, p= $p"
    mpirun -n $p ./pi_reduce
done