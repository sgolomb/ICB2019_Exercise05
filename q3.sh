a=$(cat wages.csv | cut -d "," -f 3,4 | grep -E "^[1][2]" | sort -n | head -n 1 | cut -d "," -f 2)
b=$(cat wages.csv | cut -d "," -f 3,4 | grep -E "^[1][6]" | sort -n | head -n 1 | cut -d "," -f 2)

echo "$b-$a" | bc 
