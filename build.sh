#!/bin/bash
autoreconf -ivf && \
    automake --add-missing && \
    autoreconf && \
    autoconf && \
    automake && \
    ./configure --prefix=/usr/local && \
    make -j `nproc`

echo "Build complete. Run 'sudo make install' to install to /usr/local/ (and run 'make clean' afterwards if you like)"
