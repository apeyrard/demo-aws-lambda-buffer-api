#!/usr/bin/env bash

set -e
set -x

pip install -r ci-requirements.txt
apt-get install -y curl tar
curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh
cd code/buffer/functions/proxy
make install_deps
