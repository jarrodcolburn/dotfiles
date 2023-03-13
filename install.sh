git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Because cp can't find dot files
for FILE in $(ls copy) ; do
    cp -f copy/$FILE ~/.$FILE
done