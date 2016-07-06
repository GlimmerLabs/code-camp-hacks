default:
	echo "There is no default"

fetch-commands: make-fetch-commands locations search-terms
	make-fetch-commands locations search-terms > $@
fetch-examples: make-fetch-commands locations example-terms
	make-fetch-commands locations example-terms > $@

data/all-results.tsv: queries/*.html extract-google-urls
	cat queries/*.html | extract-google-urls > data/all-results.tsv

data/unique-results.tsv: data/all-results.tsv
	sort -u data/all-results.tsv > data/unique-results.tsv
