#!/bin/bash

# Cortaremos los ficheros seleccionando las líneas múltiplo de 13

awk 'NR % 13 == 0' $1 > ${1%.*}-out.fastq
echo Fichero $1 cortado
