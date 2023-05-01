if [ "$#" -ne 2 ]; then
    echo "Usage: <username> <database>"
    exit 2
fi

for file in `ls sql/*.sql`
do
  file_no_dir="${file/sql\//}"
  ./run_test.sh $1 $2 $file_no_dir
done
