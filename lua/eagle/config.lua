local M = {}

local defaults = {
  --show lsp info (exact same contents as from vim.lsp.buf.hover()) in the eagle window
  show_lsp_info = true,

  --Offset that handles possible scrollbar plugins
  --by adding an offset column in the right side of the window.
  --If you don't know what I'm talking about, then
  --you don't need this option.
  scrollbar_offset = 0,

  --limit the height of the eagle window to vim.o.lines / max_height_factor
  --it should be any float number in the range [2.5, 5.0]
  --it doesnt take effect if you set it to anything outside that range
  max_height_factor = 2.5,

  --the delay between the mouse position arriving at a diagnostic
  --and the floating window opening
  render_delay = 500,

  --the timer before the mouse is considered idle
  --this is for detecting mouse wheel scroll
  detect_mouse_timer = 50,

  --offsets that can move the window in any direction
  --you can experiment with values and see what you like
  window_row = 0,
  window_col = 1,

  --window border options, from the api docs
  --"none": No border (default).
  --"single": A single line box.
  --"double": A double line box.
  --"rounded": Like "single", but with rounded corners ("╭" etc.).
  --"solid": Adds padding by a single whitespace cell.
  --"shadow": A drop shadow effect by blending with the background.
  border = "single",

  --the position of the title in the window
  --can be "left", "center" or "right"
  title_pos = "center",

  --customize window colors
  --the defaults are inspired by folke/tokyonight.nvim
  error_color = "#db4b4b",
  warning_color = "#e0af68",
  info_color = "#0db9d7",
  hint_color = "#1abc9c",
  generic_color = "#808080",
  lsp_info_color = "#c8c8c8",
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", defaults, options or {})
end

return M
