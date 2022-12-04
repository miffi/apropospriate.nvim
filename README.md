# Apropospriate Theme

A colorful, low-contrast, light & dark theme set for nvim. It strives to be
pleasant, clean, and consistent, with special focus for the current buffer.

This is a port of the
[apropospriate-theme](https://github.com/waymondo/apropospriate-theme) written
by [waymondo](https://github.com/waymondo).

# Installation
Using `packer.nvim`
```lua
use {"miffi/apropospriate.nvim"}
```

# Usage
Inside `init.vim`
```vim
colorscheme apropospriate-dark
" Or use the light theme
" colorscheme apropospriate-light
```

Inside `init.lua`
```lua
vim.api.nvim_command 'colorscheme apropospriate-dark'
-- Or use the light theme
-- vim.api.nvim_command 'colorscheme apropospriate-light'
```

---

As this is my first time ~~making~~ porting a colorscheme, and the fact that
emacs faces don't map evenly only nvim highlights, means that there might be
some idiosyncrasies with color matching. Feel free to suggest better
highlights, whether it be to match the original or to make the scheme fit nvim
better ^^.

# Screenshots
![Apropospriate dark theme image](https://user-images.githubusercontent.com/22885077/205475848-ef334760-6b58-4ad9-871e-820d03db8121.png)
![Apropospriate light theme image](https://user-images.githubusercontent.com/22885077/205475627-3fd732d3-be8a-45c5-a258-99194064f64c.png)
