# Because cp can't find dot files
for SRC in copy/* ; do
    DEST=~/.$(basename $SRC)
    echo "Force copying $SRC to $DEST"
    rm -f $DEST
    cp -f $SRC $DEST 
done

git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh
source ~/.zsh_plugins.zsh