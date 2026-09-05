#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo ""
echo "#==========================================================="
echo "Start Times"
head -v -n 1 rplpl-slurm*.out
head -v -n 1 rplspl-slurm*.out

echo "End Times"
tail -v -n 5 rplpl-slurm*.out
tail -v -n 5 rplspl-slurm*.out
echo "#==========================================================="
