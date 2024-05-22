#!/bin/bash

# Перевіряємо чи передано аргумент
if [ -z "$1" ]; then
  echo "Вкажіть директорію як аргумент."
  exit 1
fi

DIRECTORY=$1

# Перевіряємо чи існує директорія
if [ ! -d "$DIRECTORY" ]; then
  echo "Директорія $DIRECTORY не існує."
  exit 1
fi

# Виводимо список файлів та директорій
echo "Список файлів та директорій у $DIRECTORY:"
ls -l "$DIRECTORY"

# Додаємо паузу перед завершенням скрипта
echo "Натисніть будь-яку клавішу для завершення..."
read -n 1 -s
