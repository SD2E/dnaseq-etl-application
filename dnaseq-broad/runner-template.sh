#!/usr/bin/env bash 

. _util/container_exec.sh

version=$(cat ./VERSION)
CONTAINER_IMAGE="sd2e/dnaseq-broad:$version"

echo "read1 is ${read1}"
echo "read2 is ${read2}"
echo "fasta is ${fasta}"
echo "gff is ${gff}"
echo "bed is ${bed}"
echo "stranded is ${stranded}"
echo "max insert size is ${max_insert_size}"
echo DEBUG=1 container_exec ${CONTAINER_IMAGE} /opt/scripts/dnaseqbroad.sh ${read1} ${read2} ${fasta} ${gff} ${bed} ${stranded} ${max_insert_size}
DEBUG=1 container_exec ${CONTAINER_IMAGE} /opt/scripts/dnaseqbroad.sh ${read1} ${read2} ${fasta} ${gff} ${bed} ${stranded} ${max_insert_size}
