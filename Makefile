default:
	echo "There is no default"

fetch-commands: make-fetch-commands locations search-terms
	make-fetch-commands locations search-terms > $@
fetch-examples: make-fetch-commands locations example-terms
	make-fetch-commands locations example-terms > $@
