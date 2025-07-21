ptype=$1
d2file=~/Documents/shfiles/cs2/d2
allfile=~/Documents/shfiles/cs2/all
csfile=~/Documents/shfiles/cs2/cs2
datestamp=`date "+%B %d, %Y"`
red='\033[0;31m'
green='\033[0;32m'

#echo -e ${red} this should be red
#echo -e ${green} this should be green

prev_func()
{
d2cur=$(cat $d2file)
allcur=$(cat $allfile)
	
echo  D2 WINS: $d2cur  OTHER WINS: $allcur
	ogcomp=$(sed '1!d' $csfile)
	echo -e $green $ogcomp


	linetext=$(sed '3!d' $csfile)
	dval=$(sed '3!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '3!d' $csfile | cut -d\/ -f2 | cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then
		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "3 s/.*/$safe_text/" $csfile
			linetext=$(sed '3!d' $csfile)
		fi
		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi

	linetext=$(sed '4!d' $csfile)
	dval=$(sed '4!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '4!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then
		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "4 s/.*/$safe_text/" $csfile
			linetext=$(sed '4!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi


	linetext=$(sed '5!d' $csfile)
	dval=$(sed '5!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '5!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then

		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "5 s/.*/$safe_text/" $csfile
			linetext=$(sed '5!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi
	
	linetext=$(sed '6!d' $csfile)
	dval=$(sed '6!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '6!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then

		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "6 s/.*/$safe_text/" $csfile
			linetext=$(sed '6!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi


	linetext=$(sed '7!d' $csfile)
	dval=$(sed '7!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '7!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then

		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "7 s/.*/$safe_text/" $csfile
			linetext=$(sed '7!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi


	linetext=$(sed '8!d' $csfile)
	dval=$(sed '8!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '8!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then

		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "8 s/.*/$safe_text/" $csfile
			linetext=$(sed '8!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi


	linetext=$(sed '9!d' $csfile)
	dval=$(sed '9!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '9!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then

		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "9 s/.*/$safe_text/" $csfile
			linetext=$(sed '9!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi


	linetext=$(sed '10!d' $csfile)
	dval=$(sed '10!d' $csfile | cut -d\/ -f1 | awk '{print $NF}')
	aval=$(sed '10!d' $csfile | cut -d\/ -f2| cut -d ' ' -f1)
	
	if [ $d2cur -ge $dval ] || [ $allcur -ge $aval ]
	then

		if [[ $linetext != *"done"* ]]
		then

			newlinetext="$linetext - done $datestamp"
			safe_text=$(printf '%s\n' "$newlinetext" | sed 's/[&/\]/\\&/g')
			sed -i "10 s/.*/$safe_text/" $csfile
			linetext=$(sed '10!d' $csfile)
		fi

		echo -e $green $linetext
	
	else

		echo -e $red $linetext

	fi

}


d2cur=$(cat $d2file)
allcur=$(cat $allfile)

if [[ -z $ptype || $ptype = "p" ]] 
then

	prev_func

elif [ $ptype = "a" ] || [ $ptype = "all" ]
then

	newval=$((allcur + 1))
	echo $newval > $allfile
	prev_func

elif [ $ptype = "d" ] || [ $ptype = "d2"]
then

	newval=$((d2cur + 1))
	echo $newval > $d2file
	prev_func

fi


