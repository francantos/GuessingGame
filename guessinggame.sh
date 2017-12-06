#!/usr/bin/evn bash
# File: guessinggame.sh

clear
echo "Guess, how many files are in the  current directory ? "
read files_guess

function getFilesDir {
	local aux=$(ls -l | wc -l)-1
	echo $aux
}

files_dir=$(getFilesDir)

while [[ $files_guess -ne $files_dir ]]
do
	if [[ files_guess -lt files_dir ]]
	then
		echo "Try a higher number."
	else
		echo "Try a lower number."
	fi
	echo  "Please, repeat the quantity: "
	read files_guess
done

echo "Ok. The answer is correct."
