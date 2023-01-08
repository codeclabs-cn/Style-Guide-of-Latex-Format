## build: Build source code for host platform.
all: build

output_dir=./out
cpp_prefix=Google_C++_Style_Guide

build:
	[ -d ${output_dir} ] || mkdir -p ${output_dir}
	#xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory=${output_dir} -shell-escape Google_C++_Style_Guide.tex
	xelatex -file-line-error -halt-on-error -synctex=1 -output-directory=${output_dir} -shell-escape ${cpp_prefix}.tex
	echo "FIRST DONE..."
	#xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory=${output_dir} -shell-escape Google_C++_Style_Guide.tex
	xelatex -file-line-error -halt-on-error -synctex=1 -output-directory=${output_dir} -shell-escape ${cpp_prefix}.tex
	echo "DONE..."
	cp ${output_dir}/${cpp_prefix}.pdf .

copy:
	cp ${output_dir}/${cpp_prefix}.pdf .

clean:
	rm -rf ${output_dir} ${cpp_prefix}.pdf

