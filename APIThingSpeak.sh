#!/usr/bin/env bash
#
#Script para tomar datos de la API y subir datos a ThingSpeak
#
#Toma de datos de la API:

curl -O https://emojihub.herokuapp.com/api/random

#Seleccion de categoria:
if grep "smileys and people" random; then categ=1
elif grep "animals and nature" random; then categ=2
elif grep "food and drink" random; then categ=3
elif grep "travel and places" random; then categ=4
elif grep "activities" random; then categ=5
elif grep "objects" random; then categ=6
elif grep "symbols" random; then categ=7
elif grep "flags" random; then categ=8
fi

#Seleccion de grupo:
if fgrep -w "body" random; then grou=1
elif fgrep -w "cat face" random; then grou=2
elif fgrep -w "clothing" random; then grou=3
elif fgrep -w "creature face" random; then grou=4
elif fgrep -w "emotion" random; then grou=5
elif fgrep -w "face negative" random; then grou=6
elif fgrep -w "face neutral" random; then grou=7
elif fgrep -w "face positive" random; then grou=8
elif fgrep -w "face role" random; then grou=9
elif fgrep -w "face sick" random; then grou=10
elif fgrep -w "family" random; then grou=11
elif fgrep -w "monkey face" random; then grou=12
elif fgrep -w "person" random; then grou=13
elif fgrep -w "person activity" random; then grou=14
elif fgrep -w "person gesture" random; then grou=15
elif fgrep -w "person role" random; then grou=16
elif fgrep -w "skin tone" random; then grou=17
#
elif fgrep -w "animal amphibian" random; then grou=18
elif fgrep -w "animal bird" random; then grou=19
elif fgrep -w "animal bug" random; then grou=20
elif fgrep -w "animal mammal" random; then grou=21
elif fgrep -w "animal marine" random; then grou=22
elif fgrep -w "animal reptile" random; then grou=23
elif fgrep -w "plant flower" random; then grou=24
elif fgrep -w "plant other" random; then grou=25
#
elif fgrep -w "dishware" random; then grou=26
elif fgrep -w "drink" random; then grou=27
elif fgrep -w "food asian" random; then grou=28
elif fgrep -w "food fruit" random; then grou=29
elif fgrep -w "food prepared" random; then grou=30
elif fgrep -w "food sweat" random; then grou=31
elif fgrep -w "food vegetable" random; then grou=32
#
elif fgrep -w "travel and places" random; then grou=33
#
elif fgrep -w "activities" random; then grou=34
#
elif fgrep -w "objects" random; then grou=35
#
elif fgrep -w "symbols" random; then grou=36
#
elif fgrep -w "flags" random; then grou=37
fi

#Impresion de datos en ThingSpeak

apikey=LJ2Q84BYNMJOW096

curl https://api.thingspeak.com/update?api_key=${apikey}\&field1=${grou}\&field2=${categ}
