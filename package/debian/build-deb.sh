#!/bin/bash

scriptdir=$(cd $(dirname $0); pwd)

mkdir -p cqfd/DEBIAN
cp control cqfd/DEBIAN/

make -C ../.. install DESTDIR=${scriptdir}/cqfd

dpkg-deb --build cqfd
