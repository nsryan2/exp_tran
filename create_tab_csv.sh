echo "What database are we looking at?"
read database
echo "What is the table you want?"
read table
echo "Ok, we'll make a csv file from just that table."

sqlite3 -header -csv $database.sqlite "select * from $table;" > $table.csv

wait

echo "I've created a csv for $table for you. Anything else?"
read response
echo "We'll see if I get around to it... ah, who am I kidding? If you want another table, run me again :)."