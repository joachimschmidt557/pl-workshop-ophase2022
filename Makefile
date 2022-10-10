main.pdf: main.tex zig-logo-dark.png python-logo-generic.png Java_programming_language_logo.png
	latexmk -pdf -shell-escape main.tex


zig-logo-dark.png: zig-logo-dark.svg
	inkscape zig-logo-dark.svg -w 1600 -h 560 --export-filename zig-logo-dark.png

python-logo-generic.png: python-logo-generic.svg
	inkscape python-logo-generic.svg -w 1600 -h 560 --export-filename python-logo-generic.png

Java_programming_language_logo.png: Java_programming_language_logo.svg
	inkscape Java_programming_language_logo.svg -w 1119 -h 2048 --export-filename Java_programming_language_logo.png


zig-logo-dark.svg:
	wget https://github.com/ziglang/logo/raw/master/zig-logo-dark.svg

python-logo-generic.svg:
	wget https://www.python.org/static/community_logos/python-logo-generic.svg

Java_programming_language_logo.svg:
	wget https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg
