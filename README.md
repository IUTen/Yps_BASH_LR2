<p align="center">
      <img src="https://i.ibb.co/VgqLdNG/lr-logo.png" width="726">
</p>

<p align="center">
   <img alt="Static Badge" src="https://img.shields.io/badge/Linux-BASH-blue?label=Linux&labelColor=%230ead13&color=%23ffffff">
</p>


# Условия задачи

Требуется разработать и установить в системе свою собственную команду терминала, которая принимает на вход путь до директории и строку с расширением файла. Скрипт или программа должна добавить это расширение к именам всем файлов в заданной директории, если содержимое файла начинается с цифры

# Разбор кода

Сам код необъёмный и достаточно простой:

```BASH
#!/bin/bash
#1 - path
#2 - type

cd $1

n=(0 1 2 3 4 5 6 7 8 9)

for var in $(ls)
do
	for num in ${n[*]}
	do
		if [ "$( head -c 1 $var )" == "$num" ] 
		then 
			mv $var $var.$2
			break
		fi
	done
done
```

+ `#!/bin/bash` указывает системе, где искать программу, которая будет исполнять скрипт
+ `#1 - path` и `#2 - type` - Комментарии, указывающие что вводится пользователем в параметры
+ `cd $1` - Переход в нужную директорию для дальнейшего выполнения скрипта
+ `n=(0 1 2 3 4 5 6 7 8 9)` - Объявление набора чисел для проверки

<br><br>

```BASH
for var in $(ls)
do
	for num in ${n[*]}
	do
		if [ "$( head -c 1 $var )" == "$num" ] 
		then 
			mv $var $var.$2
			break
		fi
	done
done
```

Далее расмотрим цикл, решающий нашу задачу. Внешний цикл отвечает за пробегание по файлам в директории. Вложенный цикл сравнивает первый символ в файле с цифрами из набора. Если есть совпадение, скрипт меняет название файла и заканчивает вложенный цикл.

# Послесловие

Этот скрипт можно написать разными способами. Можно как короче, так и длинее. Другиие варианты можно найти в репозиториях организации.
