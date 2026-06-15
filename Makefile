.PHONY: default sync-site

default:
	./scripts/sync-personal-projects.sh

sync-site:
	./scripts/sync-jekyll-index.sh
