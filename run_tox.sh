#!/bin/bash
if [[ -z $BE_UID || -z $BE_GID ]]; then
    echo "MUST SPECIFY BE_UID AND BE_GID"
    exit 1
fi

export HOME=/pyenv-config/

# Set preferred versions
xargs pyenv local < $PYENV_REQUIRED_PYTHON && \
tox "$*"
EXIT=$?

# Owning root files back to the user/group.
find /app -uid 0 -exec chown -h $BE_UID {} \+
find /app -gid 0 -exec chgrp -h $BE_GID {} \+

exit $EXIT
