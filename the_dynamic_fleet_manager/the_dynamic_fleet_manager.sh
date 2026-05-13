#!/bin/bash
touch licenses_plates.txt
licenses_plates=()
registration_plate=""

until [[ $registration_plate == "finish" ]]
do
	read -p "Write the registration plate: " registration_plate

	if [[ $registration_plate == "" ]]; then
		echo -e "\e[31mError: License plate cannot be empty\e[0m"
  	elif [[ $registration_plate == "finish" ]]; then
        	break
	elif grep -q " $registration_plate$" licenses_plates.txt || [[ " ${licenses_plates[*]} " =~ " $registration_plate " ]]; then
		echo -e "\e[33mThis license plate is duplicated! Please, write another one\e[0m"
	else
		licenses_plates+=("$registration_plate")
	fi
done

for plate in "${licenses_plates[@]}"; do
	if [[ "${#plate}" -gt 7 ]]; then
		echo "[HEAVY] $plate" >> licenses_plates.txt
	else
		echo "[LIGHT] $plate" >> licenses_plates.txt
	fi
done
echo "The number of registered vehicles is ${#licenses_plates[@]}"

all_vehicles=$(wc -l < licenses_plates.txt)
echo $all_vehicles > all_vehicles.txt
