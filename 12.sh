clear
echo "Please tell me the total number"
read tnum;
echo $tnum

#---------------------------------------

echo "Please tell me the total percentage of wet berrys"
read wnum;
echo $wnum
#--------------------------------------

echo "Please tell me the total number of dry berrys"
read dnum;
echo $dnum
#------------------------------
echo "So here are the numbers"

fnum=$(($tnum * $wnum))

fnump=$((fnum/100))


fdnum=$(($tnum * $dnum))

fdnump=$((fdnum/100))

echo "$tnum: Wet BBLS: $fnump:Dry BBLs: $fdnump"

echo "So we send $tnum numbers through the dryer for a 12 Hour Interval"
drnum=$(($tnum/12))
echo "So we need to send $drnum thru the dryers"
#---------------------------------------------------------------------------

echo "Let us talk about the Wet Berrys"
echo "So we have $fnump Wet Berrys"
echo "Please tell me the idle hours"
read ihr
iwnum=$(($fnump/12*$ihr))
echo "So in the first $ihr IDLE hours, the numbers accumulated are $iwnum"
perhr=$((iwnum/4))
echo "So the math is $perhr per Hour"
echo "Accumulating @ $perhr, we get $iwnum"

echo "Let us see how many working hours we have along with the dryers"
read whr;
echo $whr
echo "So the working hours are $whr"

#--------Dryers----------------------------
echo "So how many dryers are we adding here"
read drynum
echo $drynum
fdrynum=$((drynum * 200 + 600))
echo "The final Dryer numbers are $fdrynum"

#----------------------Numbers in the Dryer for Idle hours

echo "We know that the total number in RP1 is $tnum"
echo "let us find out the idle numbers"
idlnum=$(($tnum/12*4))
echo "So we accumulated $idlnum from 7am to 11 am"

#-----The dryers
echo "Churning $idlnum"

Value=$idlnum
echo "TO TO TO"
echo $Value
echo $fdrynum
TermValue=0
#exit
for (( i=1; $(echo "$Value >= $TermValue" | bc); i++ ))

do
 Value=$(echo "$Value - $fdrynum" | bc)
 echo "After $i hour :$Value"
done
ia=$((i-1))
echo "Watchout for the value of $ia"
echo "Now here is the mistake, we did not add the process of dechaffing"
echo "Dechaffing is only for Wet Berrys, whilst the Destoning is for Dry Berrys.Nothing is told about Destoning Per Hour"

echo "So let us do the math for Wet Burries and that is $perhr for $ihr"
  


exit

#-------From here we are adding 1.sh

echo "Dryer Steps"
read step
echo $step
#Initial=16400
echo "TNUM is $tnum"
#Step=10
Value=$tnum
TermValue=0

for (( i=1; $(echo "$Value >= $TermValue" | bc); i++ ))

do
 Value=$(echo "$Value - $step" | bc)
 echo "After $i hour :$Value"
done
#-------------------------------------

exit


