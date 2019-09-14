echoy () {
    echo "Hi guys! How are you?"
}

rip () {
    	questions

        echo "Loads from dvd"
    	SOURCE=/dev/cdrom


	lsdvd "${SOURCE}" || iso
	echo "${SOURCE}"
	lsdvd "${SOURCE}" > dvdinfo
	sed -i '/Disc Title:/d' dvdinfo
	sed -i '/Longest track:/d' dvdinfo

	sequence=$(wc -l < dvdinfo)

	for i in `seq $sequence`; do
	line=$(awk 'NR=='"$i" dvdinfo)
        	if echo "${line}" | grep -Eq 'Length: 00:0'
                	then
                	echo "Crap"
        	else
                	echo "great"
                	title=$(echo "${line}" | awk '{print $2}' | sed 's/^0*//' | tr -dc '[:alnum:]\n\r')
                	HandBrakeCLI -E copy:aac --input "${SOURCE}" --title "${title}" --output "${show_name}${S}${season}${E}${episode}".mp4 -e x264 -q "${quality}" -B 320;
                episode=$((episode+1))
        	fi

	done
}


questions () {
        echo "What is the name of the show?"
        read -r show_name

        echo "What season is it?"
        read -r season

        echo _"What episode is it?"
        read -r episode

        echo "What quality level (14-20)?"
        read -r quality

	if [ ! -d "${show_name}" ]; then
        	mkdir "${show_name}"
	fi

	cd "${show_name}" || exit
}

