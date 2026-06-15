# necrophos.nvim

A Neovim colorscheme plugin with three Dota 2 hero-themed variants:
- **Necrophos** - Plague doctor theme (toxic greens, deep blues)
- **Kunkka** - Admiral/naval theme (teals, browns, golds)
- **Invoker** - Arcane mage theme (purples, blues, golds)

## Installation

### Lazy.nvim
```lua
{
  "your-username/necrophos.nvim",
  name = "necrophos",
  priority = 1000,
  config = function()
    require("necrophos").setup({
      theme = "necrophos", -- "necrophos" | "kunkka" | "invoker"
      transparent = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
      },
    })
  end,
}
```

## Usage

### Commands
- `:Necrophos` - Set Necrophos theme
- `:NecrophosKunkka` - Set Kunkka theme
- `:NecrophosInvoker` - Set Invoker theme
- `:NecrophosToggleTheme` - Cycle through themes
- `:NecrophosTransparentToggle` - Toggle transparent background

### Lua API
```lua
local necrophos = require("necrophos")

necrophos.set_theme("kunkka")
necrophos.toggle_theme()
```

## Themes Preview

| Theme | Palette |
|-------|---------|
| Necrophos | Toxic green, plague doctor brown, poison purple, ghostly teal |
| Kunkka | Tide teal, ship brown, ghost green, admiral gold |
| Invoker | Quas blue, Wex purple, Exort orange, invoke gold |

## Features
- Tree-sitter highlights
- LSP diagnostics
- Git signs (gitsigns.nvim)
- Telescope.nvim
- Which-key.nvim
- nvim-tree.lua / neo-tree.nvim
- indent-blankline.nvim
- nvim-cmp
- DAP UI
- Noice.nvim
- Notify.nvim
- Navic (LSP breadcrumbs)