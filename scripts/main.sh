#!/bin/bash



#シェルスクリプトの場所に移動
cd $(dirname $0)

#intall.shを実行
./install.sh

#link.shを実行
./link.sh
