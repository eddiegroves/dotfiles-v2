# MacOS Installation

```sh
EDDIE_CONFIG=~/.config/eddie
mkdir -p ~/.config
git clone <path to this repo> $EDDIE_CONFIG
```

```sh
cd ~
ln -s $EDDIE_CONFIG/.vimrc

mkdir -p ~/.config/fish/functions
cd ~/.config/fish/functions
ln -s $EDDIE_CONFIG/fish/functions/confluence-upload-attachment.fish

mkdir -p ~/.config/fish/completions
cd ~/.config/fish/completions
ln -s $EDDIE_CONFIG/fish/completions/confluence-upload-attachment.fish
```
