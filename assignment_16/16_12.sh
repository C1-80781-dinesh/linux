if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi


filename=$1
if [ ! -e "$filename" ]; then
    echo "File $filename does not exist."
else

    last_modification_time=$(stat -c %y "$filename")
    echo "The last modification time of $filename is $last_modification_time."
fi
