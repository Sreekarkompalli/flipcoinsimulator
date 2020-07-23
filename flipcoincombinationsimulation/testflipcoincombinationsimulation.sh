#!/bin/bash -x
is_Flip_Coin_Head=1;
is_Flip_Coin_Tail=2;


declare -A Singlet
declare -A Doublet
declare -A Triplet
function wonBYHeads() {
  percentage=$(((Heads*100)/$counter))
  echo "Heads win percentage is :" $percentage
}
function wonBYTails() {
  percentage=$(((Tails*100)/$counter))
  echo "Tails win percentage is :" $percentage
}
function wonBYHH() {
  percentage=$(((HH*100)/$counter))
  echo "Heads heads win percentage is :" $percentage
}
function wonBYTT() {
  percentage=$(((TT*100)/$counter))
  echo "Tails Tails win percentage is :" $percentage
}
function wonBYHT() {
  percentage=$(((HT*100)/$counter))
  echo "Heads Tails win percentage is :" $percentage
}
function wonBYTH() {
  percentage=$(((TH*100)/$counter))
  echo "Tails Heads win percentage is :" $percentage
}

function wonBYHHH() {
  percentage=$(((HHH*100)/$counter))
  echo "Heads Heads Heads win percentage is :" $percentage
} 
function wonBYTTT() {
  percentage=$(((TTT*100)/$counter))
  echo "Tails Tails Tails win percentage is :" $percentage
}
function wonBYHHT() {
  percentage=$(((HHT*100)/$counter))
  echo "Heads Heads Tails win percentage is :" $percentage
}
function wonBYHTH() {
  percentage=$(((HTH*100)/$counter))
  echo "Heads Tails Heads  win percentage is :" $percentage
}
function wonBYTHH() {
  percentage=$(((THH*100)/$counter))
  echo "Tails Heads Heads win percentage is :" $percentage
}
function wonBYTTH() {
  percentage=$(((TTH*100)/$counter))
  echo "Tails Tails Heads win percentage is :" $percentage
}

function wonBYTHT() {
  percentage=$(((THT*100)/$counter))
  echo "Tails Heads Tails win percentage is :" $percentage
}
function wonBYHTT() {
  percentage=$(((HHT*100)/$counter))
  echo "Heads Tails Tails win percentage is :" $percentage
}
echo "fliping single coin"

for((counter=1;counter<=100;counter++))
do
coin_Check=$(($(($RANDOM%2))+1))
if [ $coin_Check -eq $is_Flip_Coin_Head ]
then
Singlet[$counter]=3
else
Singlet[$counter]=4
fi
done
for value in ${Singlet[@]}
do
  if [ $value -eq 3 ]
  then
  Heads=$(($Heads+1))
  else
  Tails=$(($Tails+1))
  fi
done
 echo "Checking two coins at a time "
for((counter=1;counter<=50;counter++))
do
coin_Check1=$(($(($RANDOM%2))+1))
coin_Check2=$(($(($RANDOM%2))+1))

if [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 1 ]]
then
Doublet[$counter]=11
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 2 ]]
then
Doublet[$counter]=22
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 2 ]]
then
Doublet[$counter]=12
else
Doublet[$counter]=21
fi
done
for value in ${Doublet[@]}
do
  if [ $value -eq 22 ]
  then
  HH=$(($HH+1))
  elif [ $value -eq 11 ]
  then
  TT=$(($TT+1))
  elif [ $value -eq 12 ]
  then
  HT=$(($HT+1))
  else
  TH=$(($TH+1))
  fi
done


echo "checking three coins at a time"

for((counter=1;counter<=50;counter++))
do
coin_Check1=$(($(($RANDOM%2))+1))
coin_Check2=$(($(($RANDOM%2))+1))
coin_Check3=$(($(($RANDOM%2))+1))
if [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 1 && $coin_Check3 -eq 1 ]]
then
Triplet[$counter]=111
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 2 && $coin_Check3 -eq 2 ]]
then
Triplet[$counter]=222
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 2 && $coin_Check3 -eq 1 ]]
then
Triplet[$counter]=121
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 2 && $coin_Check3 -eq 2 ]]
then
Triplet[$counter]=122
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 1 && $coin_Check3 -eq 2 ]]
then
Triplet[$counter]=212
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 1 && $coin_Check3 -eq 1 ]]
then
Triplet[$counter]=211
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 1 && $coin_Check3 -eq 2 ]]
then
Triplet[$counter]=112
else
Triplet[$counter]=221
fi
done
for value in ${Triplet[@]}
do
  if [ $value -eq 111 ]
  then
  HHH=$(($HHH+1))
  elif [ $value -eq 222 ]
  then
  TTT=$(($TTT+1))
  elif [ $value -eq 122 ]
  then
  HTT=$(($HTT+1))
   elif [ $value -eq 121 ]
  then
  HTH=$(($HTH+1))
  elif [ $value -eq 212 ]
  then
  THT=$(($THT+1))
 elif [ $value -eq 211 ]
  then
  THH=$(($THH+1))
 elif [ $value -eq 112 ]
  then
  HHT=$(($HHT+1))  
  else
  TTH=$(($TTH+1))
  fi
done
 
 echo "soting the singlet doublet triplet in terms of percentage in higher order"
function sortingAllcombination(){
wonBYHeads
wonBYTails
wonBYHH
wonBYTT
wonBYHT
wonBYTH
wonBYHHH
wonBYTTT
wonBYHHT
wonBYHTH
wonBYTHH
wonBYTTH
wonBYTHT
wonBYHTT
}
 sortingAllcombination | sort -n -k6
