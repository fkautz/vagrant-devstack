#!/bin/sh
wget https://pypi.python.org/packages/source/s/six/six-1.10.0.tar.gz#md5=34eed507548117b2ab523ab14b2f8b55
tar -zxvf six-1.10.0.tar.gz 
python ./six-1.10.0/setup.py install
