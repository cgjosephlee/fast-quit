typeset -g fast_quit_ask_before_quit=true

q() {
    if [[ "$fast_quit_ask_before_quit" == "true" ]]; then
        printf "\033[0;31mAre you sure? (y/n)\n"
        read -sq
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            exit 0
        else
            : # do nothing
        fi
    else
        exit 0
    fi
}
