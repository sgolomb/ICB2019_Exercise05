#usage: cat wages file, remove line that explains column names, cut out columns delimited by "," , replace "," with a space. Sort field 1 through 1 alaphabetically and field 2 through 2 numerically, then select only unique lines within this file.

#bash ex5.q1.sh

cat wages.csv | grep -v "gender" | cut -d "," -f 1,2 | tr ',' ' ' | sort -k1,1 -k2,2n | uniq


