#!/bin/sh 
####variables####

TYPE=$1
AMT=$2
DESC=$3
DATE=$(date "+%d")
DATEFULL=$(date "+%B %d, %Y")
isranfile=/home/bailey/Documents/shfiles/budget/ran.txt
PERFILE=/home/bailey/Documents/shfiles/budget/pers.txt
PERDFILE=/home/bailey/Documents/shfiles/budget/persd.txt
GASFILE=/home/bailey/Documents/shfiles/budget/gas.txt
GASDFILE=/home/bailey/Documents/shfiles/budget/gasd.txt
GROCFILE=/home/bailey/Documents/shfiles/budget/groc.txt
GROCDFILE=/home/bailey/Documents/shfiles/budget/grocd.txt
BILLDFILE=/home/bailey/Documents/shfiles/budget/billd.txt
BILLFILE=/home/bailey/Documents/shfiles/budget/bill.txt
LFILE=/home/bailey/Documents/shfiles/budget/clear_history.log
LHFILE=/home/bailey/Documents/shfiles/budget/last_clear.txt
CFILE=/home/bailey/Documents/shfiles/budget/cpay.txt
CPREFILE=/home/bailey/Documents/shfiles/budget/cpre.txt
CREDFILE=/home/bailey/Documents/shfiles/budget/cred.txt
HISTFILE=/home/bailey/Documents/shfiles/budget/hist.txt

####base values####

PERLIM=300
MBASE=5262
bike=172
car=725
rent=1904
ffxiv=15
pf=25 #planet fitness
sb=16 #scentbird
nes=150
prime=16
xfin=105
veriz=85
#tire=146 #remove by OCT 20(but not before SEP 20)
gpu=48
MBILLBASE=$((bike + car + rent + sb + nes + prime + xfin + veriz + gpu + pf))
catlh=$(cat $LHFILE)

####functions####

boot_func()
{
	LHDATE=$(cat $LHFILE)
#if [ $catlh != $DATEFULL ]
#then
	isran=`cat $isranfile`

if [ $isran = 'f' ]
   then
	if [ $DATE = 21 ]
	then
	     echo 0 > $isranfile
	fi 
else
	if [ $DATE = 20 ]
	 then
		 
		 if [ $isran = 0 ] 
		    then
			grocdres=`cat $GROCDFILE`
			gasdres=`cat $GASDFILE`
			perdres=`cat $PERDFILE`
			billdres=`cat $BILLDFILE`
			credres=`cat $CREDFILE`
			echo "$catlh - $DATEFULL" >> $LFILE
			echo "Amount left from last check - $MFINAL" >> $LFILE
			echo "------Breakdown------" >> $LFILE
			echo "Bills: $BILLCUR" >> $LFILE
			echo "$billdres" >> $LFILE
			echo "Food(note: food always goes on the credit card): $GROCCUR" >> $LFILE
			echo "$grocdres" >> $LFILE
			echo "Gas(note: gas always goes on the credit card): $GASCUR" >> $LFILE
			echo "$gasdres" >> $LFILE
                	echo "Personal Spending: $PERCUR" >> $LFILE
			echo "$perdres" >> $LFILE
			echo "Credit Card Payment(next check(additonal note: credit card transactions are only billed for the month in which they occur)): $CCUR" >> $LFILE
			echo "$credres" >> $LFILE
			echo "---------------------" >> $LFILE
			echo " " >> $LFILE

			#resets all files to blank or zero as necessary
			echo 0 > $PERFILE
			echo 0 > $GASFILE
			echo 0 > $GROCFILE
			echo 0 > $CFILE
			echo "" > $HISTFILE
			echo "" > $GROCDFILE
			echo "" > $GASDFILE
			echo "" > $PERDFILE
			echo "" > $BILLDFILE
			echo "" > $CREDFILE
			#sets default bill base
			echo $MBILLBASE > $BILLFILE
			#marks last clear date/period
			echo $DATEFULL > $LHFILE
	
			#sets default details for bills
			echo -e "\t Base - Rent: $rent" >> $BILLDFILE
			echo -e "\t Base - Car: $car" >> $BILLDFILE
			echo -e "\t Base - Bike: $bike" >> $BILLDFILE
			echo -e "\t Base - Electric: $nes" >> $BILLDFILE
			echo -e "\t Base - Internet: $xfin" >> $BILLDFILE
			echo -e "\t Base - Phone: $veriz" >> $BILLDFILE
			echo -e "\t Base - Amazon: $prime" >> $BILLDFILE
			echo -e "\t Base - Gym: $pf" >> $BILLDFILE
			echo -e "\t Base - ScentBird: $sb" >> $BILLDFILE
			echo -e "\t Base - GPU XD: $gpu" >> $BILLDFILE
			echo $CCUR > $CPREFILE


			echo 1 > $isranfile 
		else 
			echo 0 > $isranfile

		fi
	 
	fi
fi
#fi
}


pers_func()
{
	PERNEW=$((AMT + PERCUR))
	PERDCON="$DATEFULL - $DESC: $AMT"
#	if [ $PERNEW -le $PERLIM ]
#	 then
		echo $PERNEW > $PERFILE
		echo -e "\t $PERDCON" >> $PERDFILE
#	else
#		echo "Warning...you have exceeded your limit for personal spending, would you like to proceed?"
#		read PROC
#		if [ $PROC = 'Y' ] || [ $PROC = 'y' ]
#		 then
#			echo $PERNEW > $PERFILE
#			echo -e "\t $PERDCON" >> $PERDFILE
#		fi
 
#	fi
	
}

cur_func()
{
	echo "Net: $MFINAL"
	echo "Bills: $BILLCUR"
	echo "Food: $GROCCUR"
	echo "Gas: $GASCUR"
        echo "Personal Spending: $PERCUR/$PERLIM"
	echo "Credit: $CCUR"
}

hist_func()
{
	echo $HISTLOG >> $HISTFILE
}

log_func()
{
	logcon=`cat $LFILE`
	echo "$logcon"

}

cred_func()
{
	CRENEW=$((AMT + CRECUR))
	CREDCON="$DATEFULL - $DESC: $AMT"
	echo $CRENEW > $CFILE
	echo -e "\t $CREDCON" >> $CREDFILE


}

force_func()
{
			grocdres=`cat $GROCDFILE`
			gasdres=`cat $GASDFILE`
			perdres=`cat $PERDFILE`
			billdres=`cat $BILLDFILE`
			credres=`cat $CREDFILE`
			echo "$catlh - $DATEFULL" >> $LFILE
			echo "Amount left from last check - $MFINAL" >> $LFILE
			echo "------Breakdown------" >> $LFILE
			echo "Bills: $BILLCUR" >> $LFILE
			echo "$billdres" >> $LFILE
			echo "Food(note: food always goes on the credit card): $GROCCUR" >> $LFILE
			echo "$grocdres" >> $LFILE
			echo "Gas(note: gas always goes on the credit card): $GASCUR" >> $LFILE
			echo "$gasdres" >> $LFILE
                	echo "Personal Spending: $PERCUR" >> $LFILE
			echo "$perdres" >> $LFILE
			echo "Credit Card Payment(next check(additonal note: credit card transactions are only billed for the month in which they occur)): $CCUR" >> $LFILE
			echo "$credres" >> $LFILE
			echo "---------------------" >> $LFILE
			echo " " >> $LFILE

			#resets all files to blank or zero as necessary
			echo 0 > $PERFILE
			echo 0 > $GASFILE
			echo 0 > $GROCFILE
			echo 0 > $CFILE
			echo "" > $HISTFILE
			echo "" > $GROCDFILE
			echo "" > $GASDFILE
			echo "" > $PERDFILE
			echo "" > $BILLDFILE
			echo "" > $CREDFILE
			#sets default bill base
			echo $MBILLBASE > $BILLFILE
			#marks last clear date/period
			echo $DATEFULL > $LHFILE
	
			#sets default details for bills
			echo -e "\t Base - Rent: $rent" >> $BILLDFILE
			echo -e "\t Base - Car: $car" >> $BILLDFILE
			echo -e "\t Base - Bike: $bike" >> $BILLDFILE
			echo -e "\t Base - Electric: $nes" >> $BILLDFILE
			echo -e "\t Base - Internet: $xfin" >> $BILLDFILE
			echo -e "\t Base - Phone: $veriz" >> $BILLDFILE
			echo -e "\t Base - Amazon: $prime" >> $BILLDFILE
			echo -e "\t Base - Gym: $pf" >> $BILLDFILE
			echo -e "\t Base - ScentBird: $sb" >> $BILLDFILE
			echo -e "\t Base - GPU XD: $gpu" >> $BILLDFILE
			echo $CCUR > $CPREFILE

			echo f > $isranfile

}

preview_func()
{
	previewamt=$((MBASE - MBILLBASE - CRECUR))

echo "Estimated net for next month: $previewamt"

}
####'start'####
PERCUR=$(cat $PERFILE)
GASCUR=$(cat $GASFILE)
GROCCUR=$(cat $GROCFILE)
BILLCUR=$(cat $BILLFILE)
CRECUR=$(cat $CFILE)
CPRE=$(cat $CPREFILE)
CURTOT=$((PERCUR + GROCCUR + BILLCUR + CPRE))
MFINAL=$((MBASE - CURTOT))
CCUR=$(cat $CFILE)
HISTLOG="[ $DATEFULL - $TYPE - $AMT - $DESC ]"
HISTCUR=$(cat $HISTFILE)




if [ $TYPE = "boot" ]
then 
  boot_func

elif [ $TYPE = "cur" ]
then
  cur_func

elif [ $TYPE = "game" ] || [ $TYPE = "proj" ] || [ $TYPE = "p" ]
then
  pers_func
  hist_func

elif [ $TYPE = "gas" ] || [ $TYPE = "g" ]
then
	GASNEW=$((AMT + GASCUR))
	GASDCON="	$DATEFULL - $AMT"
	echo $GASNEW > $GASFILE
	echo -e "\t $GASDCON" >> $GASDFILE
	DESC="Gas"
	hist_func
	cred_func

elif [ $TYPE = "food" ] || [ $TYPE = "f" ]
then
	GROCNEW=$((AMT + GROCCUR))
	GROCDCON="	$DATEFULL - $DESC: $AMT"
	echo $GROCNEW > $GROCFILE
	echo -e "\t $GROCDCON" >> $GROCDFILE
	hist_func
	cred_func
elif [ $TYPE = "bill" ]
then
	BILLNEW=$((AMT + BILLCUR))
	BILLDCON="$DATEFULL - $DESC: $AMT"
	echo $BILLNEW > $BILLFILE
	echo -e "\t $BILLDCON" >> $BILLDFILE
	hist_func

elif [ $TYPE = "c" ]
then
	cred_func
	hist_func
elif [ $TYPE = "cred" ]
then
	echo $AMT > $CFILE

elif [ $TYPE = "hist" ]
then
	echo "$HISTCUR"

elif [ $TYPE = "log" ]
then
	log_func
elif [ $TYPE = "force" ]
then
	force_func
elif [ $TYPE = "prev" ]
then
	preview_func
fi

