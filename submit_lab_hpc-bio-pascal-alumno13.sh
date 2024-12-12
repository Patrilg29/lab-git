#!/bin/bash

#SBATCH -p hpc-bio-pascal
#SBATCH --chdir=/home/alumno13/lab3
#SBATCH --mail-type=NONE
#SBATCH --ntasks-per-node=4

# Se ejecutará el script file-cut.sh que cortará los 4 ficheros en paralelo usando 4 procesos

for file in *.fastq;
do
	./file-cut.sh $file &
done
wait # Así espera a que todos los procesos terminen
