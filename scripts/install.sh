#!/bin/bash




#インストールフラグ
#(True: インストール, False: インストールしない)
flags=()

#インストールコマンド
#以下のように1つのテキスト内にアプリ名とコマンドを空白で分割して配列に入れる
#(
#       "{アプリ名1} {コマンド1}"
#       "{アプリ名2} {コマンド2}"
#       "{アプリ名3} {コマンド3}"
#       "{アプリ名4} {コマンド4}"
#)
commands=(
        "Rust curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
        "Zed curl -f https://zed.dev/install.sh | sh"
        "Neovim  
		sudo apt remove neovim -y &&
		rm -rf ~/.local/bin/nvim ~/.local/bin/nvim-linux64/ &&
		curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz&&
		sudo chmod 755 nvim-linux64.tar.gz &&
		mv ./nvim-linux64.tar.gz ~/.local/bin/ &&
		tar xzvf ~/.local/bin/nvim-linux64.tar.gz -C ~/.local/bin/ &&
		rm ~/.local/bin/nvim-linux64.tar.gz -rf &&
		ln -s ~/.local/bin/nvim-linux64/bin/nvim ~/.local/bin/nvim
	" 
        "command4 echo command4"
        )

#OS自体のアップデート
echo "--- OS updates ---"
echo "...sudo apt update"
sudo apt update
echo "...sudo apt dist-upgrade"
sudo apt dist-upgrade
echo "...sudo apt autoremove"
sudo apt autoremove
echo "--- done ---"
echo ""

#インストールフラグ設定
echo "--- installation settings ---"

for id in "${!commands[@]}"
do
        #コマンド列を配列から取得
        command=(${commands[$id]})
        #アプリ名を取得
        applicationName=${command[0]}
        #コマンドを取得
        installationCommand=${command[@]:1}

        #インストールの質問
        echo -n "install ${applicationName} [y/n]:"

        #入力受付
        read flag
        if [ "$flag" = "y" ]; then
                #yと入力されたならフラグをtrueで登録
                flags+=(true)
        else
                #Enterやnなどy以外ならフラグをfalseで登録
                flags+=(false)
        fi
done

echo "--- done ---"
echo ""

#インストール
echo "--- start installing --- "

for id in "${!commands[@]}"
do
        #インストールフラグを参照
        if ${flags[id]}; then
                #コマンド列を配列から取得
                command=(${commands[$id]})
                #アプリ名を取得
                applicationName=${command[0]}
                #コマンドを取得
                installationCommand=${command[@]:1}

                #インストールコマンドを表示
                echo "...${installationCommand}:"
                #インストールコマンドを実行
		eval $installationCommand
        fi
done

echo "--- done ---"
echo ""
