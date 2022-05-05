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
set background=dark " or light if you want light mode
colorscheme apropospriate
```

Inside `init.lua`
```lua
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme apropospriate]])
```

---

As this is my first time ~~making~~ porting a colorscheme, and
the fact that emacs faces don't map evenly only nvim highlights, means that
there might be some idiosyncrasies with color matching. Feel free to suggest
better highlights to me, either via issues or by a message if you know me
personally ^^.

# Screenshots
![Apropospriate dark theme image](https://i.postimg.cc/rF3NQ3fp/screenshot-2021-11-25-11-48-57.png)
