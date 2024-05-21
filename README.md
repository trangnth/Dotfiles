# Dotfiles
My configuration files that start with a dot

## vimrc

* CentOS7

```sh
git clone https://github.com/trangnth/Dotfiles
cd Dotfiles/vim
echo y | cp vimrc /root/.vimrc
chmod +x vimsetup.sh
./vimsetup.sh
```

* `Ctrl + n` : Mở cây thư mục

	* `i`: mở một file được chọn (split theo chiều ngang)
	* `s`: mở một file được chọn (split theo chiều dọc)
	* `Shift + i`: hiển thị các file ẩn
	* `Ctrl + w + ->`: di chuyển giữa các windows 
	* `t`: mở file trong một tab mới 
	* `tab_number + gt`: di chuyển giữa các tab
	* `p`: tới thư mục cha
	* `r`: refresh thư mục hiện tại 

* Giao diện tương tự

<img src="img/1.png" alt="">

## Note 

* split in vim
	* `ctrl + w` -> `v`: split Horizontally
   	* `ctrl + w` -> `s`: split Vertically
   	* `ctrl + w` -> `l`: To navigate to the right pane
   	* `ctrl + w` -> `h`: To head back to the left pane
   	* `ctrl + w` -> `k`: To head back to the upper pane
   	* `ctrl + w` -> `j`: To head back to the bottom pane
   	* more: https://www.tecmint.com/split-vim-screen/
* open file in vim and split
  	* `:vsp filename` or `:vs filename` for a vertical split
  	* `:sp filename` for a horizontal split
  	* or `vim --help`
  	  	* `-p[N]`  Open N tab pages (default: one for each file)
		* `-o[N]`  Open N windows (default: one for each file)
		* `-O[N]`  Like -o but split vertically
  	  	* So type this to open files split horizontally, for example: `vim -o file1.txt file2.txt file3.txt`
