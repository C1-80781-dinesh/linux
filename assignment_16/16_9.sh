
factorial() {
 if [ "$1" -le "1" ]; then
    echo "1"
 else
    local temp=$1
    temp=$((temp - 1))
    local result=$(factorial $temp)
    result=$((result * temp))
    echo "$result"
 fi
}

echo "Enter a number: "
read number

result=$(factorial $number)

# Printing the result
echo "The factorial of $number is: $result"
