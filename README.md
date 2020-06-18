# MacOS Installation

```sh
EDDIE_CONFIG=~/.config/eddie
mkdir -p ~/.config
git clone <path to this repo> $EDDIE_CONFIG
```

```sh
cd ~
ln -s $EDDIE_CONFIG/.vimrc
cd ~/.doom.d/
ln -s $EDDIE_CONFIG/.doom.d/config.el

mkdir -p ~/.config/fish/functions
cd ~/.config/fish/functions
ln -s $EDDIE_CONFIG/fish/functions/confluence-upload-attachment.fish
ln -s $EDDIE_CONFIG/fish/functions/plantuml-generate.fish

mkdir -p ~/.config/fish/completions
cd ~/.config/fish/completions
ln -s $EDDIE_CONFIG/fish/completions/confluence-upload-attachment.fish
ln -s $EDDIE_CONFIG/fish/completions/plantuml-generate.fish
```
