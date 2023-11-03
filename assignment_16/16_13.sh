for file in ./*; do

    # If the file is a hidden file
    if [[ $file == .?* ]]; then
        echo $file
    fi
done
