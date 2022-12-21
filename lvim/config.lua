require("plugins")
require("keymaps")

require 'colorizer'.setup()
-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"
lvim.transparent_window = true


lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.alpha.dashboard.section.header.val = require("header").dashboard()
