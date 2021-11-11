#!/bin/bash

echo "clearing json files..."
cd JSON/SAJson/ && rm -rf *
echo "success!"
sleep 2

echo "clearing tables..."
cd ../../DBS/ && python3 clearSaTables.py
echo "success!"
sleep 2

echo "fetching data..."
cd ../fetchData/ && python3 fetchSerieA.py
echo "success!"
sleep 2

echo "saving data..."
cd ../saveData/ && python3 saveSerie.py
echo "success!"
sleep 2

echo "printing data..."
cd ../ && python3 calcSA.py