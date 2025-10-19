.PHONY: fmt lint type test all
fmt:
	uv run ruff format .
lint:
	uv run ruff check .
type:
	uv run mypy src/langpipe
test:
	uv run pytest
all: fmt lint type test
