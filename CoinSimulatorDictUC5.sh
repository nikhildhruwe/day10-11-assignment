#/bin/bash -x
declare -A coin

head=1
tail=0
for ((start=0; $start<10;start++))
do
   check=$((RANDOM%2))
   case $check in
            $head) ((headCount++))
						;;
            $tail) ((tailCount++))
 						;;
   esac
done
HPercentage=$(($headCount*100/10))
TPercentage=$(($tailCount*100/10))
#echo $tailPercentage $tailPercentage

coin[H]=$HPercentage
coin[T]=$TPercentage

headHead=0
headTail=1
tailHead=2
tailTail=3
max=20

for ((start=0; $start<$max;start++))
do
   check=$((RANDOM%4))
   case $check in
            $headHead)  ((HHCount++))
								 ;;
            $headTail)  ((HTCount++))
								 ;;
            $tailHead)  ((THCount++))
								 ;;
            $tailTail) ((TTCount++))
								 ;;
   esac
done
HHPercentage=$(($HHCount*100/20))
HTPercentage=$(($HTCount*100/20))
THPercentage=$(($THCount*100/20))
TTPercentage=$(($TTCount*100/20))

coin[HH]=$HHPercentage
coin[HT]=$HTPercentage
coin[TH]=$THPercentage
coin[TT]=$TTPercentage


hhh=0
hht=1
htt=2
thh=3
tth=4
tht=5
hth=6
ttt=7
max=50

for ((start=0; $start<$max;start++))
do
	check=$((RANDOM%8))
	case $check in
				$hhh)  ((HHHCount++))
					 ;;
				$hht)	((HHTCount++))
					 ;;
				$htt)	((HTTCount++))
					 ;;
				$thh)((THHCount++))
					 ;;
				$tth)((TTHCount++))
					 ;;
				$tht)((THTCount++))
					 ;;
				$hth)((HTHCount++))
					;;
				$ttt) ((TTTCount++))
					 ;;
	esac
done
HHHPercentage=$(($HHHCount*100/$max))
HHTPercentage=$(($HHTCount*100/$max))
HTTPercentage=$(($HTTCount*100/$max))
THHPercentage=$(($THHCount*100/$max))
TTHPercentage=$(($TTHCount*100/$max))
THTPercentage=$(($THTCount*100/$max))
HTHPercentage=$(($HTHCount*100/$max))
TTTPercentage=$(($TTTCount*100/$max))

coin[HHH]=$HHHPercentage
coin[HHT]=$HHTPercentage
coin[HTT]=$HTTPercentage
coin[THH]=$THHPercentage
coin[TTH]=$TTHPercentage
coin[THT]=$THTPercentage
coin[HTH]=$HTHPercentage
coin[TTT]=$TTTPercentage

echo "All the Combinations"
Max=-1
for key in ${!coin[@]}
do
	echo $key : ${coin[$key]}
	 if (( ${coin[$key]}>$Max ))
    then
      Max=${coin[$key]}
      MaxCombination=$key
    fi

done
echo " "
echo "Winning Combination $MaxCombination : $Max "
