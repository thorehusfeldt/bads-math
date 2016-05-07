all: math

versionid:
	echo "%%% This file is generated by Makefile." > vc.tex
	echo "%%% Do not edit this file!\n%%%" >> vc.tex
	git log -1 --format="format:\\gdef\\GITAbrHash{%h}\\gdef\\GITAuthorDate{%ad}\\gdef\\GITAuthorName{%an}" >> vc.tex

math: math.tex versionid
	pdflatex math