PANDOC := pandoc -t beamer
TARGETS = class1/slides.pdf class2/slides.pdf class3/slides.pdf class4/slides.pdf class5/slides.pdf

all: $(TARGETS)

class1/slides.pdf: class1/slides
class2/slides.pdf: class2/slides
class3/slides.pdf: class3/slides
class4/slides.pdf: class4/slides
class5/slides.pdf: class5/slides

$(TARGETS):
	$(PANDOC) $^ -o $@
