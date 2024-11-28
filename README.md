# 🌟 My Neovim Configuration (Lua)

Welcome to my **Neovim configuration**! This setup is entirely written in **Lua**, designed to be lightweight, fast, and modern, leveraging the latest features of Neovim.

## 🚀 Features

- **100% Lua** configuration for better performance and maintainability.
- **Plugin management** with [packer.nvim](https://github.com/wbthomason/packer.nvim).
- **LSP Integration** for rich development features like auto-completion, diagnostics, and more.
- **Treesitter** for advanced syntax highlighting and code understanding.
- **Custom keybindings** for enhanced productivity.
- **Fuzzy finding** with Telescope for fast navigation.
- **Beautiful UI enhancements** like `lualine`, `indent-blankline`, and `gitsigns`.

---

## 📂 Directory Structure

```plaintext
~/.config/nvim/

├🔧 Installation── init.lua # Main entry pointMarkdownPreview
├── lua
│  ├── twen/          # Custom modules directory
│  │  ├── core/       # Core configurations
│  │  │   ├── keymaps.lua     # Key mappings
│  │  │   ├── options.lua     # Neovim options
│  ├── plugins/ # Plugin configurations
│  ├── lazy.lua
```

## 🔧 Installation

1. **Clone this repository**:

   ```bash
   git clone https://github.com/jesusrafaell/Neovim-lua.git ~/.config/nvim
   ```

2. **Install Neovim (v0.9+ recommended)**

3. **Install Lazy.nvim**:
   ```bash
   git clone --filter=blob:none https://github.com/folke/lazy.nvim.git \
     # ~/.local/share/nvim/lazy/lazy.nvim
   ```
4. **Launch Neovim and run**:
   ```bash
   :Lazy
   ```
5. **Restart Neovim, and you're good to go!** 🎉
