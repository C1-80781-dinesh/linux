
echo "Enter your basic salary: "
read basic_salary

if ! [[ "$basic_salary" =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Not a valid number."
    exit 1
fi

da=$(echo "scale=2; $basic_salary * 0.4" | bc)

hra=$(echo "scale=2; $basic_salary * 0.2" | bc)
gross_salary=$(echo "scale=2; $basic_salary + $da + $hra" | bc)

echo "Gross Salary: $gross_salary"
