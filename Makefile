PANDOC := pandoc -t beamer
TARGETS = \
	pdf/1_class/1_class_introduction.pdf pdf/1_class/2_introduction_project_management.pdf pdf/1_class/3_project_management.pdf pdf/1_class/4_exercise.pdf \
	pdf/2_class/1_software_development.pdf pdf/2_class/2_software_paradigms.pdf pdf/2_class/3_software_methodologies.pdf pdf/2_class/4_software_other.pdf

all: $(TARGETS)

pdf/1_class/1_class_introduction.pdf: src/1_class/1_class_introduction.md
pdf/1_class/2_introduction_project_management.pdf: src/1_class/2_introduction_project_management.md
pdf/1_class/3_project_management.pdf: src/1_class/3_project_management.md
pdf/1_class/4_exercise.pdf: src/1_class/4_exercise.md
pdf/2_class/1_software_development.pdf: src/2_class/1_software_development.md
pdf/2_class/2_software_paradigms.pdf: src/2_class/2_software_paradigms.md
pdf/2_class/3_software_methodologies.pdf: src/2_class/3_software_methodologies.md
pdf/2_class/4_software_other.pdf: src/2_class/4_software_other.md

$(TARGETS):
	$(PANDOC) $^ -o $@