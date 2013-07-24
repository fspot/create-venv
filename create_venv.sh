#!/bin/bash

set -e

echo "> Downloading virtualenv.py..."
wget -q https://raw.github.com/pypa/virtualenv/develop/virtualenv.py # -O virtualenv.py
# or curl -s https://raw.github.com/pypa/virtualenv/develop/virtualenv.py > virtualenv.py

echo "> Creating and activating new virtualenv <venv>..."
python virtualenv.py venv > out.log
source venv/bin/activate

echo "> Installing setuptools/easy_install in <venv>..."
wget -q https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py # -O ez_setup.py
python ez_setup.py >> out.log 2>&1

echo "> Installing pip in <venv>..."
easy_install pip >> out.log 2>&1

echo "> Cleaning..."
rm *.tar.gz *.py *.pyc
rm out.log

echo "Done."
