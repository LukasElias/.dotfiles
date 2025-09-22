#!/bin/bash

playerctl --follow metadata --format '{{mpris:trackid}}' | while read -r TRACKID; do
	

	ARTIST_NAME=$(printf '%s' "$(playerctl metadata xesam:artist)" | jq -sRr @uri | sed 's/%20/+/g')
	TRACK_NAME=$(printf '%s' "$(playerctl metadata xesam:title)" | jq -sRr @uri | sed 's/%20/+/g')
	ALBUM_NAME=$(printf '%s' "$(playerctl metadata xesam:album)" | jq -sRr @uri | sed 's/%20/+/g')
	DURATION=$(playerctl metadata mpris:length | awk '{print int($1/1000000)}')

	URL="https://lrclib.net/api/get?artist_name=$ARTIST_NAME&track_name=$TRACK_NAME&album_name=$ALBUM_NAME&duration=$DURATION"

	API_RESPONSE=$(curl -s $URL)

	echo "$API_RESPONSE" | jq -c '
		def parse_synced:
			.syncedLyrics
			| split("\n")
			| map(
				capture("\\[(?<min>\\d{2}):(?<sec>\\d{2})\\.(?<cs>\\d{2})\\]\\s*(?<text>.*)")?
				| { time: ((.min|tonumber)*60 + (.sec|tonumber) + ((.cs|tonumber)/100)), text: .text }
			);

		def paragraph_sizes:
			.plainLyrics
			| split("\n\n")
			| map( split("\n") | length );

		if .syncedLyrics != null then
			(parse_synced) as $synced
			| (paragraph_sizes) as $sizes

			| (reduce $sizes[] as $len ({chunks:[], off:0};
				.chunks += [ $synced[.off : (.off + $len)] ]
				| .off += $len
			)

			| if .off < ($synced|length)
				then .chunks + [ $synced[.off : ($synced|length)] ]
				else .chunks
			end)
		else
			.plainLyrics | split("\n\n") | map(split("\n") | map({time: null, text: .}))
		end
	'
done
