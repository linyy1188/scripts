path=/lfs1/yiyelin/dataset
name=oxbuild
targpath=$path/$name

echo $path
a=`ls $targpath`
arr=(${a//s+/})

for s in ${arr[@]}:
do
	echo "$path/$name/$s" >> "$name.list"

done


