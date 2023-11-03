
for file in ./*; do

    if [ -x "$file" ]; then
        echo $file
    fi
done
