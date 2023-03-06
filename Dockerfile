FROM archlinux

RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm neovim git base-devel tmux ripgrep

RUN git clone https://github.com/derekthecool/stimpack ~/.config/nvim/

RUN nvim --headless "+Lazy! sync" +qa

CMD ["tmux new -As0"]
