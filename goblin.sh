#!/bin/bash
#convertir el siguiente bucle for en while
p=0
veces=0
read -p "Dime cuanta vida tienes: " vida

#Veces que he matado al goblin

while [ $p -le 1000 -a $vida -gt 0 ]; do

	#Hacemos una tirada de dado de caras
	let num=$RANDOM%10
	let p=p+1
	if [ $num -ge 2 ]; then
	    echo "Has superado la tirada de habilidad. Matas al goblin."
	    let veces=veces+1
	else
	    let vida=vida-num
	    echo "El goblin te golpea, y quedan "$vida" puntos"
	fi
done

echo
echo"Te has quedado con "$vida" puntos de vida"
echo "Has matado al goblin "$veces"."

exit 0
