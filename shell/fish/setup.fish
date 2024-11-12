#!/home/linuxbrew/.linuxbrew/bin/fish
#!/usr/bin/env fish


# fish configs
## delete
if test -e $HOME/.config/fish/conf.d; or test -L $HOME/.config/fish/conf.d
    rm -rf $HOME/.config/fish/conf.d
end

## link
ln -s $(pwd)/conf.d $HOME/.config/fish/conf.d


# starship
## fetch
# curl -sS https://starship.rs/install.sh | sh


## delete existing config
# if test -e $HOME/.config/starship.toml; or test -L $HOME/.config/starship.toml
#     rm -rf $HOME/.config/starship.toml
# end

## link configs
# ln -s $(pwd)/../starship/starship.toml $HOME/.config/starship.toml
# export STARSHIP_CONFIG=$(pwd)/../starship/starship.toml


# oh my posh
## install
brew install jandedobbeleer/oh-my-posh/oh-my-posh

## delete existing config
if test -e $HOME/.config/oh-my-posh.yaml; or test -L $HOME/.config/oh-my-posh.yaml
    rm -rf $HOME/.config/oh-my-posh.yaml
end

## link configs
# ln -s $(pwd)/../oh-my-posh/oh-my-posh.yaml $HOME/.config/oh-my-posh.yaml

## copy configs
cp $(pwd)/../oh-my-posh/oh-my-posh.yaml $HOME/.config/oh-my-posh.yaml
