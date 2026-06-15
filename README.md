# necrophos.nvim

A Neovim colorscheme plugin with six Dota 2 hero-inspired variants:

| Theme | Hero | Identity |
|-------|------|----------|
| **Necrophos** | Plague Doctor | Toxic greens, poison purple, ghostly teal |
| **Kunkka** | Admiral | Tide teal, ship brown, admiral gold |
| **Invoker** | Arcane Mage | Quas blue, Wex purple, Exort orange |
| **Brewmaster** | Pandaren Monk | Brew amber, bamboo green, storm mist |
| **Earth Spirit** | Stone Guardian | Jade spirit, ancient granite, temple bronze |
| **Lich** | Frost Sovereign | Cold flame, spectral frost, frozen silver |

## Installation

### Lazy.nvim

```lua
{
  "your-username/necrophos.nvim",
  name = "necrophos",
  priority = 1000,
  config = function()
    require("necrophos").setup({
      theme = "necrophos", -- "necrophos" | "kunkka" | "invoker" | "brewmaster" | "earth_spirit" | "lich"
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

### packer.nvim

```lua
use {
  "your-username/necrophos.nvim",
  config = function()
    require("necrophos").setup({ theme = "necrophos" })
  end,
}
```

## Usage

### Commands

| Command | Description |
|---------|-------------|
| `:Necrophos` | Set Necrophos theme |
| `:NecrophosKunkka` | Set Kunkka theme |
| `:NecrophosInvoker` | Set Invoker theme |
| `:NecrophosBrewmaster` | Set Brewmaster theme |
| `:NecrophosEarthSpirit` | Set Earth Spirit theme |
| `:NecrophosLich` | Set Lich theme |
| `:NecrophosToggleTheme` | Cycle through all themes |
| `:NecrophosTransparentToggle` | Toggle transparent background |

### Lua API

```lua
local necrophos = require("necrophos")

-- Set a specific theme
necrophos.set_theme("lich")

-- Toggle through themes
necrophos.toggle_theme()
```

## Themes

### Necrophos - Plague Doctor
Deep greens and purples evoking disease, decay, and the plague doctor's emerald staff. A dark, mysterious palette with toxic energy.

### Kunkka - The Admiral
Ocean teals and ship browns with admiral gold accents. Inspired by stormy seas, ghost ships, and cannon fire.

### Invoker - Arcane Mage
Quas ice blue, Wex lightning purple, and Exort fire orange. The mastery of three elements united by golden invoke energy.

### Brewmaster - Pandaren Monk
Warm amber brew and bamboo green against aged wood tones. The calm balance of a tavern philosopher and elemental warrior.

### Earth Spirit - Stone Guardian
Deep jade green flowing through weathered granite. An ancient temple statue awakened — stone given consciousness, jade as spiritual identity.

### Lich - Frost Sovereign
Spectral cold flame and frozen silver against midnight navy. An immortal frost sorcerer ruling over a kingdom of eternal ice.

## Features

- Tree-sitter highlights
- LSP diagnostics
- Git signs (gitsigns.nvim)
- Telescope.nvim
- Which-key.nvim
- nvim-tree.lua / neo-tree.nvim
- indent-blankline.nvim
- DAP UI
- Noice.nvim
- Notify.nvim
- Navic (LSP breadcrumbs)
- Markdown / markup highlights
- Terminal ANSI colors (16 colors)
- Transparent background support

## License

MIT
