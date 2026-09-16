for i in {1..10}
do
    # Käivitame Pythoni skripti ja salvestame tulemuse faili
    python.exe generate_data.py > ../data/data$i.txt
done

echo "10 faili on salvestatud 'data' kataloogi"


