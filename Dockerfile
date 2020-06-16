FROM quay.io/pypa/manylinux2014_x86_64
# Python 2.7.5 exists in this image, but not pip.  Fix that.
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python2 get-pip.py
