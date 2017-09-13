DATA = $(wildcard *.csv)

all: eps

eps:
	./hint_visual.py --input $(DATA) --output heatmap.eps

clean:
	rm -f *.eps *.csv
