cwd=$(pwd)

echo -n "Now running $(basename $cwd)... "
python mutatex.py 2n9x_1_2.pdb -m mutation_list.txt --np $NP --nruns=2 --binding-interface -u &> mutatex.log

if [[ $? -eq 0 ]]; then
	echo "PASSED"
else
	echo "FAILED"
fi
