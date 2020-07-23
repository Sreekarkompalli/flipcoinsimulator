#!/bin/bash -x
is_Flip_Coin_Head=1;
is_Flip_Coin_Tail=2;
Heads=0;
Tails=0;
maxCount1=0;
maxCount2=0;
while [[ $maxCount1 -ne 21 || $maxCount2 -ne 21 ]]
do
coin_Check=$(($(($RANDOM%2))+1))
 case $coin_Check in
 $is_Flip_Coin_Head)
  maxCount1=$(($maxCount1+1))
  ;;
  $is_Flip_Coin_Tail)
  maxCount2=$(($maxCount2+1))
  ;;
esac
done
if [ $maxCount1 -eq $maxCount2 ]
then
 while [[ $(($maxCount1-$maxCount2)) -ne 2 ||  $(($maxCount2-$maxCount1)) -ne 2 ]]
 do
  coin_Check=$(($(($RANDOM%2))+1))
 case $coin_Check in
  $is_Flip_Coin_Head)
  maxCount1=$(($maxCount1+1))
  ;;
  $is_Flip_Coin_Tail)
  maxCount2=$(($maxCount2+1))
  ;;
  esac
  done
  if [  $(($maxCount1-$maxCount2)) -eq 2]
  then
  echo "Heads won the game"
  else
  echo "Tails won the game" 
  fi
elif [ $maxCount1 -gt $maxCount2 ]
then
 echo "Heads won the game"
  HeadsWinMargin=$(( $maxcount1 - $maxcount2 ))
 echo $HeadWinMargin
else
 echo"Tails won the game"
 TailsWinMargin=$(( $maxcount2 - $maxcount1 ))
 echo $TailWinMargin
fi
