# Config for CentOS 7

yum install vim python3 python3-pip git -y
yum install -y fontconfig

#wget   -O ~/.vimrc


pip3 install --user powerline-status
pip3 install --user git+git://github.com/powerline/powerline
pip3 show powerline-status

cd /opt
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

wget https://github.com/thlorenz/dotfiles/blob/master/fonts/Inconsolata-Powerline.otf
wget  https://github.com/thlorenz/dotfiles/blob/master/fonts/Menlo-Powerline.otf
wget https://github.com/thlorenz/dotfiles/blob/master/fonts/Monaco-Powerline.otf
cp Inconsolata-Powerline.otf /usr/share/fonts/
cp Menlo-Powerline.otf /usr/share/fonts/
cp Monaco-Powerline.otf /usr/share/fonts/
#~/.local/share/fonts/
# sua file ~/.config/fontconfig/conf.d/10-powerline-symbols.conf de chon font

#yum install fontconfig -y
sudo mv PowerlineSymbols.otf /usr/share/fonts/
fc-cache -vf /usr/share/fonts/
mv 10-powerline-symbols.conf /etc/fonts/conf.d/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sed -i "s/\"colorscheme tequila-sunrise/colorscheme tequila-sunrise/" /root/.vimrc
vim ~/.vimrc -c :PluginInstall -c :x -c :x
#vim ~/.vimrc -c :PluginInstall -c :x -c :x
cd -


# # vim -c "py3 powerline.reload()" -c :x

# # Set up nginx syntax
# mkdir -p ~/.vim/syntax/
# wget "http://www.vim.org/scripts/download_script.php?src_id=19394" -O ~/.vim/syntax/nginx.vim
# mkdir -p ~/.vim/{autoload,bundle}/
# curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# #echo -en "\nexecute pathogen#infect()\n" >> ~/.vimrc
# git clone https://github.com/chr4/nginx.vim ~/.vim/bundle/nginx.vim
# cat > ~/.vim/filetype.vim << __EOF__
# au BufRead,BufNewFile /etc/nginx/*,/etc/nginx/conf.d/*,/usr/local/nginx/conf/*,*/conf/nginx.conf if &ft == '' | setfiletype nginx | endif
# __EOF__

