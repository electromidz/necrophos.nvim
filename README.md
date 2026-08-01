# necrophos.nvim

A Neovim colorscheme plugin with eight Dota 2 hero-inspired variants:

| Theme | Hero | Identity |
|-------|------|----------|
| **Necrophos** | Plague Doctor | Toxic greens, poison purple, ghostly teal |
| **Kunkka** | Admiral | Tide teal, ship brown, admiral gold |
| **Invoker** | Arcane Mage | Quas blue, Wex purple, Exort orange |
| **Brewmaster** | Drunken Brawler | Brass keg, olive robe, Primal Fire — no blue |
| **Earth Spirit** | Carved from Jade | Sacred jade, terracotta, granite — no blue |
| **Lich** | Frost Sovereign | Cold flame, spectral frost, frozen silver |
| **Arc Warden** | Primordial Fragment | Flux plasma, magnetic teal, tempest indigo |
| **Dragon Knight** | Davion | Four dragon forms: green, red, blue, black |

## Installation

### Lazy.nvim

```lua
{
  "your-username/necrophos.nvim",
  name = "necrophos",
  priority = 1000,
  config = function()
    require("necrophos").setup({
      theme = "necrophos", -- "necrophos" | "kunkka" | "invoker" | "brewmaster"
                      -- | "earth_spirit" | "lich" | "arc_warden" | "dragon_knight"
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
| `:NecrophosArcWarden` | Set Arc Warden theme |
| `:NecrophosDragonKnight` | Set Dragon Knight theme |
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

### Brewmaster - Drunken Brawler
Brass keg gold, olive robe green and Primal Fire orange over deep mahogany. Built from Mangix's actual model rather than a generic warm palette — which means **no blue anywhere**, because the hero has none.

### Earth Spirit - Carved from Jade
Sacred jade, fired terracotta and cold granite. Valve's own lore says Kaolin was "carved from sacred jade" and buried with a stone funerary army, so the theme uses exactly those three materials. Also **no blue** — spirit jade marks functions, carved jade marks types.

### Lich - Frost Sovereign
Spectral cold flame and frozen silver against midnight navy. An immortal frost sorcerer ruling over a kingdom of eternal ice.

### Arc Warden - Primordial Fragment
Flux plasma blue, magnetic teal and tempest indigo in a cosmic void. Electromagnetic and ancient.

### Dragon Knight - Davion
Elder Dragon Form is canonically four dragons — Green (corrosive), Red (fire), Blue (frost) and Black (Aghanim's) — so the palette gets four anchors from opposite ends of the wheel, plus Davion's steel plate and gold trim. The widest hue separation of any theme here: functions are Blue Dragon frost, strings are Corrosive Breath, errors are Red Dragon fire, keywords are Black Dragon scale.

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
