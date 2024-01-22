#!/bin/bash

read -p "Введите префикс имени каталога: " prefix
read -p "Введите начальный номер: " start_num
read -p "Введите конечный номер: " end_num

if [ $end_num -lt $start_num ]; then
  echo "Ошибка: Конечный номер меньше начального!"
  exit 1
fi

for ((i=$start_num; i<=$end_num; i++)); do
  mkdir "${prefix}_${i}"
done
echo "Каталоги успешно созданы."
