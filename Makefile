VENV := venv
PYTHON := $(VENV)/bin/python

RM := rm -rf

venv:
  $(RM) $(VENV)
  python3 -m venv $(VENV)

docs:
  $(PYTHON) -m pip install furo
