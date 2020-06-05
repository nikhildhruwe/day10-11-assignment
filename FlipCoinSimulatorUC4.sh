#/bin/bash -x

head=1
tail=0
headCount=0
tailCount=0
for ((i=0;$i<10;i++))
do
	check=$((RANDOM%2))
	if (( $check == $head))
	then
		((headCount++))
	else
		((tailCount++))
	fi
done
echo "Head count : $headCount"
echo "Tail count : $tailCount"
echo " "
if (( $headCount > $tailCount ))
then
	diff=$(($headCount-$tailCount))
	echo "Heads Won by $diff difference."
elif (( $headCount < $tailCount ))
then
	diff=$(($tailCount-$headCount))
	echo "Tails Won by $diff difference."
else
	echo "It is a Tie."
	echo "Game ends if difference between them is  minimum 2."
	while (( 1 ))
	do
		check=$((RANDOM%2))
		 if (( $check == $head))
	   then
   	   ((headCount++))
   	else
   	   ((tailCount++))
  	 	fi

		if (( $(($headCount-$tailCount)) == 2 ))
		then
			break;
		elif (( $(($tailCount - $headCount)) ==2 ))
		then
			break;
		fi
	done
	echo " "
	echo "Head count : $headCount"
	echo "Tail count : $tailCount"
fi
