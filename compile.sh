#!/bin/bash

for i in {1..5}
do
	pandoc -t beamer class$i/slides -o class$i/slides.pdf
done
