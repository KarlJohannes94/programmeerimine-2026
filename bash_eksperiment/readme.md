See on bash eksperimendi readme.md fail.
Lõin esmalt alamkaustad, script alla panin skriptid ja data alla andmed, mida genereeriti.
Lõpuks pidin tulemuste (results) alamkausta leidma vastuse, kus kuvatakse failis, mitu korda igat unikaalset arvu data failides esineb. 

Lahenduseks kasutasin käske: 
mkdir bash_eksperiment
mkdir -p bash_eksperiment/data
mkdir -p bash_eksperiment/results
mkdir -p bash_eksperiment/scripts
loo readme: touch readme.md

nano editoris:
nano generate_data.py
python generate_data.py (pidin ikkagi enne pythoni alla laadima arvutisse, et see käsk töötaks)
nano editoris: import random; print([random.randint(1, 100) for _ in range(200)])
nano generate_data.sh
editoris:
for i in {1..10}
do
    # Käivitame Pythoni skripti ja salvestame tulemuse faili
    python.exe generate_data.py > ../data/data$i.txt
done
    # kuvaks sõnumi 10 faili salvestatud 
echo "10 faili on salvestatud 'data' kataloogi"


cat ../data/data1.txt
cat ../data/data*.txt | tr -d '[],' | tr ' ' '\n' | grep -v '^$'
cat ../data/data*.txt | tr -d '[],' | tr ' ' '\n' | grep -v '^$' | sort -n | uniq -c > ../results/summary_total_unique_numbers_counted.txt
cat ../results/summary_total_unique_numbers_counted.txt
