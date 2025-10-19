.PHONY: fmt lint type test clean all
fmt:
	uv run ruff format .
lint:
	uv run ruff check .
type:
	uv run mypy src/langpipe
test:
	uv run pytest
clean:
	rm -rf __pycache__ .ruff_cache .mypy_cache .pytest_cache .coverage
all: fmt lint type test clean
