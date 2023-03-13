git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Because cp can't find dot files
for SRC in copy/* ; do
    DEST=~/.$(basename $SRC)
    echo "Force copying $SRC to $DEST"
    rm -f $DEST
    cp -f $SRC $DEST 
done

antidote load