#!/bin/bash

# See https://github.com/travis-ci/travis-ci/issues/1066
# Fail if one of the commands of this script fails
set -e

cd ../
mv ansible-role-${ROLE_NAME/_/-} $ROLE_NAME
cd $ROLE_NAME

set +e
