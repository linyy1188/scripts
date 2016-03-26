
num=0
list=(
https://www.youtube.com/watch?v=hLEIpEH8nHQ
https://www.youtube.com/watch?v=iZHHBmy4VmU
https://www.youtube.com/watch?v=k9HqoI6gnyw
https://www.youtube.com/watch?v=3WKhQji63RE
https://www.youtube.com/watch?v=jz-wwNyKNng
https://www.youtube.com/watch?v=78Pk53Xjvtc
https://www.youtube.com/watch?v=KaufhZv84Gk
https://www.youtube.com/watch?v=7L9UUnkeKw8
https://www.youtube.com/watch?v=q7d2Pe67brQ
https://www.youtube.com/watch?v=kc2G640rrQU
https://www.youtube.com/watch?v=-kCBZXkSbCA
https://www.youtube.com/watch?v=6I4AI6zIz5g
https://www.youtube.com/watch?v=UbMilFEQtCA
https://www.youtube.com/watch?v=iKxSCfKCPGA
https://www.youtube.com/watch?v=NB3lYhMZg84
https://www.youtube.com/watch?v=3n45SSEgLe0
https://www.youtube.com/watch?v=wRBTS5bgztk
https://www.youtube.com/watch?v=pJ4LBmVg-PM
https://www.youtube.com/watch?v=VOT2i-zNHW8
https://www.youtube.com/watch?v=P1crSVruOQg
https://www.youtube.com/watch?v=3WKhQji63RE
https://www.youtube.com/watch?v=2uh4yMAx2UA
https://www.youtube.com/watch?v=aTYubTvy6n0
https://www.youtube.com/watch?v=Ca385XKYEnc
https://www.youtube.com/watch?v=_ES50lUF2bU
https://www.youtube.com/watch?v=vA_67l_5P2s
https://www.youtube.com/watch?v=A6EoEYoTgbU
)
#/nfs/isicvlnas01/share/anaconda/bin/python -c "from pytube import YouTube; from pprint import pprint; yt=Youtube($video);pprint(yt.get_videos());video=yt.get('map4','360p');video.download('./')"
for video in ${list[@]}:
do
((num = num + 1))
#echo $num
filename=`printf "%.3d" $num`
#echo $filename
echo "$num: downloading $video"
/nfs/isicvlnas01/share/anaconda/bin/python -c "from pytube import YouTube; from pprint import pprint; yt=YouTube('$video');pprint( yt.get_videos());yt.set_filename('youtube_$filename'); video=yt.get('mp4','360p'); video.download('./')"
done
