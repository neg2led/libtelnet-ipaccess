#!/bin/bash
pushd ../
autoreconf -ivf && \
    automake --add-missing && \
    autoreconf && \
    autoconf && \
    automake && \
    ./configure --prefix=/usr/local && \
    make -j `nproc`
popd
echo "Build complete. Run 'sudo make install' from project root to install to /usr/local/ (and run 'make clean' afterwards if you like)"
