VENV := venv
PYTHON := $(VENV)/bin/python

RM := rm -rf

venv:
  $(RM) $(VENV)
  python3 -m venv $(VENV)

docs:
  python3 -m pip install furo
