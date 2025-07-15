all: clean build upload

build:
	poetry build

clean:
	rm -rf ./dist
	rm -rf ./build
	poetry run python -c "import shutil; shutil.rmtree('dist', ignore_errors=True)"

upload:
	poetry publish

info:
	poetry show

install-dev:
	poetry install

test:
	poetry run pytest

format:
	poetry run black src/

type-check:
	poetry run mypy src/
