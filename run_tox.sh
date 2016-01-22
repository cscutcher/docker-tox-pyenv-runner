#!/bin/bash
# Set preferred versions
export HOME=/pyenv-config/
xargs pyenv local < $PYENV_REQUIRED_PYTHON
tox "$*"
