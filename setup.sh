#!/usr/bin/env bash
EXCEPTION=('.gitignore' '.git' '.gitmodules' 'README.md' '.' '..' 'setup.sh')
BACKUP_FOLDER='.dotfiles_backup'

# Download Git submodules
cd "$HOME/.dotfiles"
git submodule init
git submodule update --remote || git submodule update --recursive
cd $HOME

# Select only the config files
REGEX=$(printf '%q|' "${EXCEPTION[@]}")
REGEX=${REGEX::-1}
REGEX="^($REGEX)$"
FILE_LIST=$(ls -a .dotfiles/ | egrep -v $REGEX)

# Backup conflicting config files
mkdir $BACKUP_FOLDER
mv $FILE_LIST $BACKUP_FOLDER 2>/dev/null

# Remove backup folder if empty
rmdir $BACKUP_FOLDER 2>/dev/null

# Create symlink
for filename in $FILE_LIST; do
	ln -s ".dotfiles/$filename" .
done


##
## Vim configuration
##

# Add gopls for Go linting with ALE
GO111MODULE=on go get golang.org/x/tools/gopls@latest || echo 'Could not go get gopls. Go linting in Vim will not work optimally'


echo 'Environnement has been set up'
