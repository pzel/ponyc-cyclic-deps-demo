.PHONY: compile-with-ponyc compile-with-stable show-versions

deps.png: deps.dot
	dot $< -Tpng -o $@

compile-with-ponyc: show-versions
	ponyc

compile-with-stable: show-versions
	stable env ponyc
	

show-versions:
	@echo $$(which ponyc) "\n" $$(ponyc --version)
	@echo $$(which stable) "\n" $$(stable version)
	
