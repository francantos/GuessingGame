all: README.md

README.md: 
	echo "1. Title of the project --> The Unix Workbench - Peer-graded Assigment: Bash, Make, Git and HitHub" > README.md
	echo "2. Date and time at which make was run --> \c" >> README.md
	date >> README.md
	echo "3. The number of lines of code contained in guessinggame.sh --> \c" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+">> README.md

clean: 
	rm README.md
