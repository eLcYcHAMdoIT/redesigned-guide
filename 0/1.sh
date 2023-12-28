#!/usr/bin/bash
rm *.m3u8
b=1
while true
do
	c=$(printf "%07d" $b)
	wget -T 15 -O playlist$c.m3u8 --header "Host: mhd158.iptv2022.com" "http://87.239.27.170/p/ujGSkBYO8nmYhu5IGOkTeQ,1704340819/streaming/1kanalplus4/324/5/tracks-v5a1/mono.m3u8"&&let b=b+1
	grep -i "cue-" playlist$c.m3u8||grep -i "extinf" playlist$c.m3u8|grep -iv "extinf:6.000,"||rm playlist$c.m3u8
done
