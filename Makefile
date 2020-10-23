strip-prefix=sed -E 's/\w\s+//'
strip-suffix=sed -E 's/\/.*//'

.PHONY: determine-changes

determine-changes:
	@git diff --name-status origin/main^...origin/main | grep build | $(strip-prefix) | $(strip-suffix) | uniq
