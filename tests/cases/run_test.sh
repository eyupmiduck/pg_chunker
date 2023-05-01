if [ "$#" -ne 3 ]; then
    echo "Usage: <username> <database> <test script>"
    exit 2
fi

filename=${3%.*}
echo $filename

psql -U $1 -d $2 -f sql/$filename.sql  > results/$filename.txt 2>&1

diff results/$filename.txt gold_files/$filename.txt
