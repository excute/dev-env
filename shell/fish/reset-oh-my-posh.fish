#!/home/linuxbrew/.linuxbrew/bin/fish
#!/usr/bin/env fish

## delete existing config
if test -e $HOME/.config/oh-my-posh.yaml; or test -L $HOME/.config/oh-my-posh.yaml
    rm -rf $HOME/.config/oh-my-posh.yaml
end

## link configs
# ln -s $(pwd)/../oh-my-posh/oh-my-posh.yaml $HOME/.config/oh-my-posh.yaml

## copy configs
cp $(pwd)/../oh-my-posh/oh-my-posh.yaml $HOME/.config/oh-my-posh.yaml
