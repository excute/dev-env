#!/home/linuxbrew/.linuxbrew/bin/fish
#!/usr/bin/env fish

## delete existing config
if test -e $HOME/.config/oh-my-posh.json; or test -L $HOME/.config/oh-my-posh.json
    rm -rf $HOME/.config/oh-my-posh.json
end

## link configs
# ln -s $(pwd)/../oh-my-posh/oh-my-posh.json $HOME/.config/oh-my-posh.json

## copy configs
# cp $(pwd)/../oh-my-posh/oh-my-posh.json $HOME/.config/oh-my-posh.json
cp $(pwd)/../oh-my-posh/oh-my-posh.json $HOME/.config/oh-my-posh.json
