# Neovim Config
This is my, Ruby Rose ([MicroRay620](https://github.com/MicroRay620))'s, Neovim config. Feel free to modify, optimize, and/or use it for what ever you want.

# Installation
## Basics
- Have a [nerd font](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file) installed
- Have Git installed
- Once you complete the steps, run the Mason Install script
## Installation
1. Install Neovim if you haven't already
```bash
# Debian Based
sudo apt install nvim -y 

# Fedora Based
sudo dnf install nvim -y 

# Arch Based
sudo pacman -S nvim 
```
2. Go to your ~/.config directory
```bash
cd ~/.config/
```
3. Run the bash command(s)
```bash 
git clone https://github.com/MicroRay620/neovim-config.git
cd neovim-config
mv lua/ lsp/ init.lua .git/ -t ~/.config/nvim 
```

# Plugins
For plugins, I use [Lazy](github.com/folke/lazy.nvim)
My config uses the following Plugins:
- [aerial](https://github.com/stevearc/aerial.nvim)
- [barbar](https://github.com/romgrk/barbar.nvim)
- [completions](https://github.com/hrsh7th/nvim-cmp)
- [cheatsheet](https://github.com/doctorfree/cheatsheet.nvim)
- [cmp-under-comparation](https://github.com/lukas-reineke/cmp-under-comparator)
- [Comments.nvim](https://github.com/numToStr/Comment.nvim)
- [flash](https://github.com/folke/flash.nvim)
- [grapple](https://github.com/cbochs/grapple.nvim)
- [lspconfig](https://github.com/neovim/nvim-lspconfig)
- [markdown](github.com/tadmccorkle/markdown.nvim)
- [mason](https://github.com/mason-org/mason.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-lldb](https://github.com/julianolf/nvim-dap-lldb)
- [nvim-hslens](https://github.com/kevinhwang91/nvim-hslens)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [snippets](https://github.com/norcalli/snippets.nvim)
- [suave](https://github.com/nyngwang/suave.lua)
- [surround](https://github.com/kylechui/nvim-surround)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
> Need to configure the telescope plugin
- [theme](https://github.com/MicroRay620/neovim-config/blob/main/lua/plugins/theme.lua)
    - To see the theme I use [theme - dracula](https://github.com/Mofiqul/dracula.nvim) 
    - To get your own theme check [this out](https://dotfyle.com/neovim/colorscheme/top)
- [transparent](https://github.com/tribela/transparent.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [whichkey](https://github.com/folke/which-key.nvim)

# Mason Installs
When you use the config I have these installed via Mason:
- luacheck
- cspell
- htmlhint
- clangd
- clang-format
- cpplint
- cpptools
- csharp-language-server
- css-lsp
- debugpy
- lua-language-server
- php-debug-adapter

To install these run this script
```vim
:MasonInstall luacheck cspell htmlhint clangd cpplint cpptools csharp-language-server css-lsp debugpy lua-language-server php-debug-adapter eslint-lsp typescript-language-server
```
> The MasonInstalls are optional 

For proper usage, make sure to install luarocker

# Keymaps
# Keybindings Summary

## Normal Mode

| Key Combination | Command | Description |
| :--- | :--- | :--- |
| `r` | `Ctrl+r` | Redo last change |
| `t` | `:terminal<CR>` | Opens terminal |
| `S` | `:w<CR>` | Alternative saves file |
| `T` | `:Termdebug<CR>` | Opens Termdebug |
| `Tab` | `:NvimTreeFocus<CR>` | Focuses the NvimTree |
| `*` | `:lua require('hslens').start()<CR>` | Searches for instances of word |
| `#` | `:noh<CR>` | Closes hslens |
| `Leader + k` | `Ctrl+w k` | Moves to the window up |
| `Leader + h` | `Ctrl+w h` | Moves to the window to the left |
| `Leader + l` | `Ctrl+w l` | Moves to the window to the right |
| `Leader + j` | `Ctrl+w j` | Moves to the window down |
| `Leader + Up Arrow` | `Ctrl+w k` | Arrow key. Moves the window up |
| `Leader + Left Arrow` | `Ctrl+w h` | Arrow key. Moves window to the left |
| `Leader + Right Arrow` | `Ctrl+w l` | Arrow key. Moves window to the right |
| `Leader + Down Arrow` | `Ctrl+w j` | Arrow key. Moves window down |
| `Leader + v` | `:vsp<CR>` | Splits the window vertically |
| `Leader + o` | `:sp<CR>` | Splits the window horizontally |
| `Leader + t` | `:sp \| terminal<CR>` | Splits horizontally and opens terminal |
| `Ctrl + s` | `:w<CR>` | Saves the file |
| `Ctrl + q` | `:qa<CR>` | Exits Neovim (all windows) |
| `Ctrl + a` | `:wa<CR>` | Saves every file (all buffers) |
| `Alt + n` | `:tabnew<CR>` | Opens a new tab |
| `Alt + d` | `:tabclose<CR>` | Closes the current tab |
| `Alt + l` | `:tabnext<CR>` | Goes to the next tab |
| `Alt + Right Arrow` | `:tabnext<CR>` | Uses arrow keys to go to the next tab |
| `Alt + h` | `:tabprevious<CR>` | Goes to the previous tab |
| `Alt + Left Arrow` | `:tabprevious<CR>` | Uses arrow keys to go to the previous tab |
| `End` | `:qa<CR>` | Force ends the session (exits all) |
| `Home` | `:q<CR>` | Closes current window |
| `F2` | `:Run<CR>` | Runs the debugged code |

To set your own leader go to [leader.lua](https://github.com/MicroRay620/neovim-config/blog/main/lua/keymaps/lead-keymaps.lua) and look for `vim.g.mapleader`, set the quotations to what key you want your leader to be.
**Note:** The leader key is set to `<Space>`
