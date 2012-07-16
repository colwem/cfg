if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
    source "$HOME/.rvm/scripts/rvm"; 
fi