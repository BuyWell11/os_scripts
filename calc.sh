#!/bin/bash

one='^([АаОо]+[ТтДд]+[ЫыИи]+[Нн]+)()?$|1'
two='^([ДдТт]+[ВвФф]+[Аа]+)()?$|2'
three='^([Тт]+[Рр]+[ЫыИи]+)()?$|3'
four='^([Чч]+[ЕеИиЫы]+[ТтДд]+[ЫыИи]+[Рр]+[ЕеЭэИи]+)()?$|4'
five='^([Пп]+[АаЯя]+[ТтДд]+[Ьь]+)()?$|5'
six='^([ШшЩщ]+[ЕеИиЫы]+[СсЗз]+[ТтДд]+[Ьь]+)()?$|6'
seven='^([СсЗз]+[ЕеИи]+[Мм]+[Ьь]+)()?$|7'
eight='^([ВвФф]+[АаОо]+[СсЗз]+[ЫыИиЕе]+[Мм]+)()?$|8'
nine='^([Чч]+[ЕеИиЫы]+[ТтДд]+[ЫыИи]+[Рр]+[ЕеЭэИи]+)()?$|9'
zero='^([Нн]+[Оо]+[Лл]+[Ьь]+)()?$|0'
minus='^([Мм]+[ЕеИиЫы]+[Нн]+[Уу]+[СсЗз]+)()?$|\-'
plus='^([Пп]+[Лл]+[УуЮю]+[СсЗз]+)()?$|\+'
multiplication='^([Уу]+[Мм]+[Нн]+[АаОо]+[Жж]+[ЫыИи]+[ТтДд]+[Ьь]+)()?$|\*'
division='^([Дд]+[ЕеЭэ]+[Лл]+[ЫыИи]+[Тт]+[Ьь]+)()?$|\/'

calc() {
	echo 'Введи число'
	read val
	echo 'Введи Знак'
	read sign
	echo 'Введи 2 число'
	read val2
	if [[ $val =~ $one ]]; then
		val=1
	elif [[ $val =~ $two ]]; then
		val=2
	elif [[ $val =~ $three ]]; then
		val=3
	elif [[ $val =~ $four ]]; then
		val=4
	elif [[ $val =~ $five ]]; then
		val=5
	elif [[ $val =~ $six ]]; then
		val=6
	elif [[ $val =~ $seven ]]; then
		val=7
	elif [[ $val =~ $eight ]]; then
		val=8
	elif [[ $val =~ $nine ]]; then
		val=9
	elif [[ $val =~ $zero ]]; then
		val=0
	fi

	if [[ $val2 =~ $one ]]; then
		val2=1
	elif [[ $val2 =~ $two ]]; then
		val2=2
	elif [[ $val2 =~ $three ]]; then
		val2=3
	elif [[ $val2 =~ $four ]]; then
		val2=4
	elif [[ $val2 =~ $five ]]; then
		val2=5
	elif [[ $val2 =~ $six ]]; then
		val2=6
	elif [[ $val2 =~ $seven ]]; then
		val2=7
	elif [[ $val2 =~ $eight ]]; then
		val2=8
	elif [[ $val2 =~ $nine ]]; then
		val2=9
	elif [[ $val2 =~ $zero ]]; then
		val2=0
	fi

	if [[ $sign =~ $minus ]]; then
		res=$(( $val - $val2 ))
	elif [[ $sign =~ $plus ]]; then
		res=$(( $val + $val2 ))
	elif [[ $sign =~ $multiplication ]]; then
		res=$(( $val * $val2 ))
	elif [[ $sign =~ $division ]]; then
		res=$(( $val / $val2 ))
	fi
	echo $res
}

while [[ true ]]; do
	calc
done
