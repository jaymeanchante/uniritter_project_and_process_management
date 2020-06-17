PANDOC := pandoc -t beamer
TARGETS = \
	pdf/1_class/1_class_introduction.pdf pdf/1_class/2_introduction_project_management.pdf pdf/1_class/3_project_management.pdf pdf/1_class/4_exercise.pdf \
	pdf/2_class/1_software_development.pdf pdf/2_class/2_software_paradigms.pdf pdf/2_class/3_exercise.pdf pdf/2_class/4_guest.pdf \
	pdf/3_class/1_software_methodologies.pdf pdf/3_class/2_exercise.pdf \
	pdf/4_class/1_roles.pdf pdf/4_class/2_guests.pdf pdf/4_class/3_exercise.pdf \
	pdf/5_class/1_software.pdf

all: $(TARGETS)

pdf/1_class/1_class_introduction.pdf: src/1_class/1_class_introduction.md
pdf/1_class/2_introduction_project_management.pdf: src/1_class/2_introduction_project_management.md
pdf/1_class/3_project_management.pdf: src/1_class/3_project_management.md
pdf/1_class/4_exercise.pdf: src/1_class/4_exercise.md
pdf/2_class/1_software_development.pdf: src/2_class/1_software_development.md
pdf/2_class/2_software_paradigms.pdf: src/2_class/2_software_paradigms.md
pdf/2_class/3_exercise.pdf: src/2_class/3_exercise.md
pdf/2_class/4_guest.pdf: src/2_class/4_guest.md
pdf/3_class/1_software_methodologies.pdf: src/3_class/1_software_methodologies.md
pdf/3_class/2_exercise.pdf: src/3_class/2_exercise.md
pdf/4_class/1_roles.pdf: src/4_class/1_roles.md
pdf/4_class/2_guests.pdf: src/4_class/2_guests.md
pdf/4_class/3_exercise.pdf: src/4_class/3_exercise.md
pdf/5_class/1_software.pdf: src/5_class/1_software.md

$(TARGETS):
	$(PANDOC) $^ -o $@
