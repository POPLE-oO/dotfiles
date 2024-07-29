#!/bin/bash




#シェルスクリプトの場所に移動
cd $(dirname $0)
#settingsフォルダに移動
cd ../settings/

#ファイル一覧を取得
files=$(ls -a)

#settingsフォルダの中身をホームディレクトリ直下にシンボリックリンクする
echo "--- setting links ---"
#ファイルの数ループ
for f in $files
do

	if [ $f != "." ]; then
		if [ $f != ".." ]; then
			echo "$(pwd)/$f"
			echo "~/$f"
			ln -sfn "$(pwd)/$f" "${HOME}"
		fi
	fi

done

echo "--- done ---"
echo ""
