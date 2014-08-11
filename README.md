dotfiles
========

###Secret configs go in
path_to_dotfiles_folder/bash/secret_env  

###Requirements  
* vim  

Sym links
  ln -sf ~/path/to/dotfiles/vimrc ~/.vimrc
  ln -sf ~/path/to/dotfiles/gvimnrc ~/.gvimrc
  ln -s ~/path/to/dofiles/vim ~/.vim

.bash_profile
  source ~/path/to/dotfiles/.bashrc

Vim is configured to have 2 folders for backups and temporary files, check the .vimrc config and create them
