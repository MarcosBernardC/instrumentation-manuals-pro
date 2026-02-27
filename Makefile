PROJECTS_DIR := projects
PROJECTS := $(notdir $(wildcard $(PROJECTS_DIR)/*))
CLEAN_PROJECTS := $(addprefix clean-,$(PROJECTS))

.PHONY: all clean $(PROJECTS) $(CLEAN_PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	@echo "🔨 Compilando proyecto: $@"
	@cd $(PROJECTS_DIR)/$@/src && pdflatex -interaction=batchmode *.tex
	@echo "✅ Finalizado en $(PROJECTS_DIR)/$@/src/"

clean: $(CLEAN_PROJECTS)
	@rm -f texput.log

$(CLEAN_PROJECTS):
	@$(eval PROJ := $(subst clean-,,$@))
	@echo "扫 Limpiando: $(PROJ)"
	@find $(PROJECTS_DIR)/$(PROJ)/src -type f \( -name "*.aux" -o -name "*.log" -name "*.out" -name "*.toc" \) -delete