# yanc

yet another nvim configuration

## remove the readonly mode warning delay

1. grab the [patch](https://gist.github.com/lucasarthur/40184e9ccae8a22d03e2f4da1680c7ea)
2. clone [neovim](https://github.com/neovim/neovim)
3. apply the patch with `git apply remove_readonly_delay.patch`
4. build neovim following the repo [instructions](https://github.com/neovim/neovim/blob/master/BUILD.md)

## [lazy.nvim](https://github.com/folke/lazy.nvim)

### nerdfont

i use [JetBrains Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip) btw

### luarocks and lua 5.1

```shell
yay -S luarocks lua51
```

or [download luarocks](https://github.com/luarocks/luarocks/wiki/Download) and [lua](https://www.lua.org/download.html)

## misc

### [ripgrep](https://github.com/BurntSushi/ripgrep)

```shell
yay -S ripgrep
```

or [install ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

### [fzf](https://github.com/junegunn/fzf)

```shell
yay -S fzf
```

or [install fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)

### [node](https://nodejs.org/en)

```shell
yay -S nodejs
```

or [install node](https://nodejs.org/en/download/)

#### some node packages

```shell
npm i -g neovim tree-sitter-cli tree-sitter
```

### oh shit, here we go again a.k.a setting things up

1. open up lazy with `:Lazy` and install/update/clean/sync if necessary
2. open up mason with `:Mason` and check if the LSPs were installed correctly. take action if necessary
3. last but not least, it would be nice if you ran `:checkhealth`. check if everything is fine and if something is missing, it shouldn't be trickier than what you did until now, go fix it!
4. enjoy and have a nice one! :)
