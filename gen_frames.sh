path=video_set

echo $path
a=`ls $path/*.mp4`
arr=(${a//s+/})
num=0
for s in ${arr[@]}:
do
	((num = num + 1))
	filename=`printf "%.3d" $num`
	echo "$filename: gen shots of $s"
	ffmpeg/ffmpeg -i $s -vf fps=1 %d.png
	mkdir pics_set/youtube_$filename 
	mv *.png pics_set/youtube_$filename
done

ffmpeg/ffmpeg -i video_set/youtube_027.mp4 -vf fps=1 %d.png
        mkdir pics_set/youtube_$filename
	        mv *.png pics_set/youtube_$filename
		
