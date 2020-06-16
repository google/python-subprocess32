#!/bin/bash
docker pull quay.io/pypa/manylinux2014_x86_64
# This depends on ./Dockerfile
docker build .
# This is the image "name" the above created for me
docker run 89729288db46 pip2 --version
docker run -it -v "$(pwd)":/io 89729288db46 pip2 wheel /io/ -w /io/wheelhouse/
ls -al wheelhouse/
docker run -it -v "$(pwd)":/io 89729288db46 auditwheel repair /io/wheelhouse/subprocess32-3.5.4-cp27-cp27mu-linux_x86_64.whl -w /io/wheelhouse
ls -al wheelhouse/
../twine_venv/bin/twine check wheelhouse/subprocess32-3.5.4-cp27-cp27mu-manylinux2014_x86_64.whl
../twine_venv/bin/twine upload wheelhouse/subprocess32-3.5.4-cp27-cp27mu-manylinux2014_x86_64.whl
