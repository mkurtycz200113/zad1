if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
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
elif [ "$1" == "--help" ]; then
  echo "Dostępne opcje:"
  echo "--date - wyświetla dzisiejszą datę"
  echo "--logs - tworzy automatycznie 100 plików logx.txt z informacjami o nazwie pliku, nazwie skryptu i dacie"
  echo "--logs 30 - tworzy automatycznie 30 plików logx.txt z informacjami o nazwie pliku, nazwie skryptu i dacie"
  echo "-h --help - wyświetla wszystkie dostępne opcje"
else
  echo "Nieznana opcja. Wpisz '$0 --help' w celu uzyskania listy dostępnych opcji."
fi
