# first, run this from an interactive zsh terminal session:
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

cat antidote_init.sh > ~/.zshrc
cp .zsh_plugins.txt ~/
cp .p10k.zsh ~/