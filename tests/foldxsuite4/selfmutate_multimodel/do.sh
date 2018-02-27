cwd=$(pwd)

echo -n "Now running $(basename $cwd)... "
python mutatex.py 2KLZ_1_2.pdb -m mutation_list.txt --np $NP --nruns=2 --self-mutate -u &> mutatex.log

if [[ $? -eq 0 ]]; then
	echo "PASSED"
else
	echo "FAILED"
fi
