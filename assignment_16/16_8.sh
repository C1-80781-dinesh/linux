
echo "Enter a number: "
read number

for i in {1..10}
do
 echo "$number x $i = $(($number * $i)))"
done
