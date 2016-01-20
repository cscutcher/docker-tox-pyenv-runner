Docker Tox Pyenv Runner
=======================
This contains the definition for an Docker image for running tox to test python.

Tox is a application to run python tests against multiple versions of python in
virtual environments.

Running
=======

```
docker run --user=$(id -u) --rm -v $PWD:/app cscutcher/tox-pyenv-runner
```

Troubleshooting
===============

KeyError: 'getpwuid(): uid not found: 1000'
-------------------------------------------
Using the `--user` flag can cause trouble as tox doesn't pass the `HOME`
environmental variable by default.

Ensure that your tox.ini contains;
```
[testenv]
passenv = HOME
```
