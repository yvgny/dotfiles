# Dotfiles

All the dotfiles I share between my setups are here.

To install automatically all the dotfiles and save the conflicting ones in a `.dotfiles_backup` folder, execute the following steps: 

```bash
git clone https://github.com/yvgny/dotfiles.git ~/.dotfiles
bash ~/.dotfiles/setup.sh 
```

The script uses symbolic links to map all the dotfiles from the home directory to the ones in `.dotfiles`.

