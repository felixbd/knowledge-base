##
# Project Title
# (c) 2023 Felix Drees
#
# @file
# @version 0.1

all: convert open

convert:
	find . -type f -name "*.org" ! -path "./.git/*" -exec emacs -batch {} -f org-html-export-to-html --kill \;

open:
	firefox index.html

clean:
	find . -type f \( -name "*.html" -o -name "*.html~" \) -delete

# end
