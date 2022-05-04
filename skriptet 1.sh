#! /bin/bash
 
#this is a cat command
: '
dy pikat dhe thonjza teke ne fillim te komentit me shume rrjeshta dhe ne fund per ti bere te pa dukshme
'

#cat >> file.txt 
: ' kjo eshte qe cdo gje qe ti shkruan pas aktivizimit t skriptit te shkojne ne file .text
'

#cat << prove
: '
kjo eshte nje prove per te pare a funksionon apo jo dhe ncdo gje qe shkruan mes ktyre del e dukur '
#prove
: '
armino=10
if [ $armino -eq 9  ]
then
	echo "the condition is true"
elif (( $armino > 9))
then
	echo "the second condition is true" 	
else
	echo "the condition is not true"
fi
'
: '
-eq dmth equan
-eq dmth non equal
-gt dmth greater then
-lt dmth less then
nqs perdotr () nuk ka nevoje per -eq e ben direkte = 
'

: '
age=10

if [ "$age" -gt 18 ] && [ "$age" -lt 40 ] #ose: if [[ "$age" -gt 18 && "$age" -lt 40 ]] 
then
       	echo "the age is correct"
else 
	echo "the age is not correct"
fi
'
# && kur te dy conditionat te jene true ose -a
# -o ose || (or) kur duhet njera ose tjetra

: '
age=40

if [[ "$age" -gt 18 -o "$age" -lt 40 ]]
then
	echo "the age is correct"
else
	echo "the age is not correct"
fi
'


#case
: '
car=$1
case $car in
	"BMV" )
		echo "its a bmv" ;;
	"audi" )
		echo "its an audi" ;;
	"ford" )
		echo "is a ford" ;;
	"fiat" )
		echo "is a fiat" ;;
	* )
		echo "is not a car" ;;
esac

Kur vendos mbrapa skriptin e nje nga emrat e makinave atehere do dali cfare eshte. 
'
#loops
: '
#while
nr=1
while [ $nr -lt 10 ]
do
	echo "$nr"
	nr=$(( nr+1 ))
done
'

#until
: '
n=1
until [ $number -ge 10 ]
do
	echo $1
	n=$(( n+1 ))
done
'

#for
: '
for i in 1 2 3 4 5
do 
	echo $1

done

#ose

for i in {0..20..2}  #{start..ending..increment}
do
	echo $i
done

for (( i=0; i<5; i++ ))
	echo $i
done
'
#break and continue statemant
: '
for (( i=0; i<10; i++ ))
do
	if [ $1 -gt 5 ]
	then 
		break
	fi
	echo $i
done
'
: '
for (( i=0; i<10; i++ ))
do
        if [ $1 -eq 3 ] || [ $1 -eq 7 ]
        then 
             continue
        fi
        echo $i
done
'
#script input
: '
echo $1 $2 $3 #nxjerr arguments
'
: '
args=("$@" ) # $@ unlimited arguments
echo ${args[0]} ${args[1]} ${args[2]} 
'
#if you want to print all the arguments
#echo $@

#to print the array
#echo $#

: '
while read line 
do
	echo "$line"
done < "${1:- /dev/stdin}"

#kur nk ke file te specifikuar
'
#script output
: '

ls -al >jo_error.txt 2>error.txt >& te dyja
'


