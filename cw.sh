if [ "$1" == "--date" ]; then
  echo $(date)
elif [ "$1" == "--logs" ]; then
  if [ -n "30" ]; then
    for ((i=1; i<=30; i++)); do
      echo "log$i.txt" > log$i.txt
      echo "Nazwa skryptu: $0" >> log$i.txt
      echo "Data: $(date)" >> log$i.txt
    done
  else
    for ((i=1; i<=100; i++)); do
      echo "log$i.txt" > log$i.txt
      echo "Nazwa skryptu: $0" >> log$i.txt
      echo "Data: $(date)" >> log$i.txt
    done
  fi
