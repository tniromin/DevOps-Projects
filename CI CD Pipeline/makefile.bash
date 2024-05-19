#!/bin/bash

mkdir tests

echo "def test_hello():" > tests/test_hello2.py
echo "    print(\"hello world\")" >> tests/test_hello2.py

echo "def test_helloworld():" > tests/test_helloworld2.py
echo "    print(\"hello world\")" >> tests/test_helloworld2.py

echo "pytest" > requirements.txt

mkdir -p .github/workflows
mv main.yml .github/workflows/main.yml
