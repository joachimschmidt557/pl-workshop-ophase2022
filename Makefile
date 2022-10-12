main.pdf: main.tex images
	latexmk -pdf -interaction=nonstopmode -shell-escape main.tex

watch: main.tex images
	latexmk -pvc -pdf -interaction=nonstopmode -shell-escape main.tex

images: zig-logo-dark.png python-logo-generic.png Java_programming_language_logo.png NumPy_logo_2020.png scipy.png pytorch-logo-dark.png nim.png

.PHONY: watch images


zig-logo-dark.png: zig-logo-dark.svg
	inkscape zig-logo-dark.svg -w 1600 -h 560 --export-filename zig-logo-dark.png

python-logo-generic.png: python-logo-generic.svg
	inkscape python-logo-generic.svg -w 1600 -h 560 --export-filename python-logo-generic.png

Java_programming_language_logo.png: Java_programming_language_logo.svg
	inkscape Java_programming_language_logo.svg -w 1119 -h 2048 --export-filename Java_programming_language_logo.png

NumPy_logo_2020.png: NumPy_logo_2020.svg
	inkscape NumPy_logo_2020.svg -w 2560 -h 1150 --export-filename NumPy_logo_2020.png

scipy.png: scipy.svg
	inkscape scipy.svg -w 500 -h 500 --export-filename scipy.png

pytorch-logo-dark.png:
	wget https://raw.githubusercontent.com/pytorch/pytorch/master/docs/source/_static/img/pytorch-logo-dark.png

nim.png: nim.svg
	inkscape nim.svg -w 500 -h 500 --export-filename nim.png


zig-logo-dark.svg:
	wget https://github.com/ziglang/logo/raw/master/zig-logo-dark.svg

python-logo-generic.svg:
	wget https://www.python.org/static/community_logos/python-logo-generic.svg

Java_programming_language_logo.svg:
	wget https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg

NumPy_logo_2020.svg:
	wget https://upload.wikimedia.org/wikipedia/commons/3/31/NumPy_logo_2020.svg

scipy.svg:
	wget -O scipy.svg https://raw.githubusercontent.com/scipy/scipy/main/doc/source/_static/logo.svg

nim.svg:
	wget -O nim.svg https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-on-black.svg
