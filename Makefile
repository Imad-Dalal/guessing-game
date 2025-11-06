README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Project Description" >> README.md
	echo "This project is a Bash shell guessing game where users try to guess the number of files in the current directory." >> README.md
	echo "" >> README.md
	echo "## Make Execution Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Lines of Code" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md
	echo "" >> README.md

clean:
	rm -f README.md

.PHONY: clean