Docker Tox Pyenv Runner
=======================
This contains the definition for an Docker image for running tox to test python.

Tox is a application to run python tests against multiple versions of python in
virtual environments.

Docker Hub
==========

The Docker instance is located
[here](https://hub.docker.com/r/cscutcher/tox-pyenv-runner/) on
[Docker hub](https://hub.docker.com).

Running
=======

```bash
docker run -e BE_UID=$(id -u) -e BE_GID=$(id -g) --rm -v $PWD:/app cscutcher/tox-pyenv-runner
```
