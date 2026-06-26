.PHONY: validate evidence index all

validate:
	bash ./scripts/validate-lab.sh
	bash ./scripts/check-boundaries.sh
	bash ./scripts/check-markdown-fences.sh
	bash ./scripts/check-ai-boundaries.sh
	bash ./scripts/check-registry.sh
	bash ./scripts/check-lab-metadata.sh
	bash ./scripts/check-lab-index.sh

evidence:
	bash ./scripts/generate-evidence.sh

index:
	python3 ./scripts/generate-lab-index.py

all: index validate evidence
