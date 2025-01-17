#usage cat wages.csv cuts gender, experience, and pay. Sorts by pay lowest to highest, pulls the lowest earner and puts it into lowest.earner.txt
#THEN cat wages.csv perfoms the same as above except it pulls the highest earner and puts it inot highest.earner.txt
#THEN it does the above and pulls the top 10 highest earners, and reports back the number of females redirecting it into number.females.topten.txt

cat wages.csv | cut -d , -f 1,2,4 | sort -t',' -n -k3,3 | head -n 2 | tail -n 1 > lowest.earner.txt | cat wages.csv | cut -d , -f 1,2,4 | sort -t',' -n -k3,3 | tail -n 1 > highest.earner.txt | cat wages.csv | cut -d , -f 1,2,4 | sort -t',' -n -k3,3 | tail -n 10 | grep "female" | wc -l > number.females.topten.txt
