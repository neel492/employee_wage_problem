#! /bin/bash -x

read -p "Enter one word: " s
len=${#s}
#echo $s | tr -cd 'aeiou' | wc -c`
count=0
while [ $len -gt 0 ]
do
   ch=$(echo $s | cut -c $len)
   case $ch in
      [aeiouAEIOU] )
	((count++))
         echo $ch
      ;;
   esac
   ((len--))
done
echo "The no of vowel is: "$count
