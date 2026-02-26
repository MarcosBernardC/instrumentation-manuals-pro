PROJECTS_DIR := projects
PROJECTS := $(notdir $(wildcard $(PROJECTS_DIR)/*))
CLEAN_PROJECTS := $(addprefix clean-,$(PROJECTS))

.PHONY: all clean $(PROJECTS) $(CLEAN_PROJECTS)

all: $(PROJECTS)

$(PROJECTS):
	@echo "🔨 Compilando proyecto: $@"
	@pdflatex -interaction=batchmode -output-directory=$(PROJECTS_DIR)/$@/src $(PROJECTS_DIR)/$@/src/*.tex
	@echo "✅ Finalizado"

clean: $(CLEAN_PROJECTS)
	@rm -f texput.log

$(CLEAN_PROJECTS):
	@$(eval PROJ := $(subst clean-,,$@))
	@echo "🧹 Limpiando archivos temporales de: $(PROJ)"
	@find $(PROJECTS_DIR)/$(PROJ)/src -type f -name "*.aux" -delete
	@find $(PROJECTS_DIR)/$(PROJ)/src -type f -name "*.log" -delete
	@find $(PROJECTS_DIR)/$(PROJ)/src -type f -name "*.out" -delete
	@find $(PROJECTS_DIR)/$(PROJ)/src -type f -name "*.toc" -delete