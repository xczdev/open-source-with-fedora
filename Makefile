.PHONY: init serve build clean

init:
	python3 -m venv .venv
	. .venv/bin/activate && pip install -U pip && pip install -r requirements.txt

serve:
	. .venv/bin/activate && mkdocs serve

build:
	. .venv/bin/activate && mkdocs build

clean:
	rm -rf site
