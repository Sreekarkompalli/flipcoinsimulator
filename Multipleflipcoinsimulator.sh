#!/bin/bash -x
is_Flip_Coin_Head=1;
is_Flip_Coin_Tail=2;
Heads=0;
Tails=0
for((i=0;i<100;i++))
do
coin_Check=$(($(($RANDOM%2))+1))
 case $coin_Check in
 $is_Flip_Coin_Head)
  Heads=$(($Heads+1))
  ;;
  $is_Flip_Coin_Tail)
  Tails=$(($Tails+1))
  ;;
esac
done
echo $Heads
echo $Tails

