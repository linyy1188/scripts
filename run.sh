path="../data/Training"
path_gt="../data/Training_GT"
for thre in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
do
tp=0
tpfp=0
tpfn=0
for img in $path/* 
do
	file=`echo ${img##*/}`
	name=`echo ${file%%.*}`
	#echo $name
	#../../anaconda2/bin/python main.py $img
	fout="out/$name.txt"
	gt="$path_gt/gt_$name.txt"
	cmd="./evalv1.py $fout $gt $thre"
	#echo $cmd
	str=`$cmd`
	echo $str >> "pr.txt"
	#echo $str
	a=`echo ${str%% *}`
	b=`echo ${str##* }`
	c=`echo ${str% *}`
	c=`echo ${c#* }`
	#echo "a:$a b:$b c:$c"
	((tp = tp + ${a}))
	((tpfn = tpfn + ${b}))
	((tpfp = tpfp + ${c}))
	#echo "$right $amount"
done
echo "$thre-1/$thre:$tp $tpfp $tpfn"
done
#h=`echo "$tp.0/$tpfp.0"`
#echo $h
#pre=`echo "${h}"|bc`
#((recall = tp/tpfn))
#((fscore = 2*(pre*recall)/ (pre+recall)))
#echo "Precision:$pre Recall:$recall F-score:$fscore"
#./path.sh
#python main.py
