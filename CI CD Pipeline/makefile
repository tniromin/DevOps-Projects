TEST_DIR := tests


all: create_tests create_workflows install_requirements


create_tests:
	mkdir -p $(TEST_DIR)
	echo "def test_hello():" > $(TEST_DIR)/test_hello2.py
	echo "    print(\"hello world\")" >> $(TEST_DIR)/test_hello2.py
	echo "def test_helloworld():" > $(TEST_DIR)/test_helloworld2.py
	echo "    print(\"hello world\")" >> $(TEST_DIR)/test_helloworld2.py


create_workflows:
	mkdir -p .github/workflows
	echo "name: Test Pipeline\n\
\n\
on:\n\
  push:\n\
    branches:\n\
      - main\n\
  workflow_dispatch:\n\
\n\
jobs:\n\
  build:\n\
    runs-on: ubuntu-latest\n\
\n\
    steps:\n\
      - name: Check out the code\n\
        uses: actions/checkout@v2\n\
\n\
      - name: Set up Python environment\n\
        uses: actions/setup-python@v4\n\
        with:\n\
          python-version: '3.x'\n\
\n\
      - name: Install dependencies\n\
        run: |\n\
          python -m pip install --upgrade pip\n\
          pip install -r requirements.txt\n\
\n\
      - name: Run tests\n\
        run: |\n\
          pytest" > .github/workflows/main.yml

install_requirements:
	pip install -r requirements.txt

clean:
	rm -rf $(TEST_DIR)
	rm -rf .github/workflows

.PHONY: all create_tests create_workflows install_requirements clean