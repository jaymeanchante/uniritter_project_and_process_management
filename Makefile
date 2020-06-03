PANDOC := pandoc -t beamer
TARGETS = pdf/1_class/1_class_introduction.pdf pdf/1_class/2_introduction_project_management.pdf

all: $(TARGETS)

pdf/1_class/1_class_introduction.pdf: src/1_class/1_class_introduction.md
pdf/1_class/2_introduction_project_management.pdf: src/1_class/2_introduction_project_management.md

$(TARGETS):
	$(PANDOC) $^ -o $@
