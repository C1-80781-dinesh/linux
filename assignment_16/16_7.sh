
echo "Enter a number:"
read number

if (( number > 0 ))
then
   echo "$number is a positive number."
elif (( number < 0 ))
then
   echo "$number is a negative number."
else
   echo "$number is neither positive nor negative."
fi
