local wezterm = require("wezterm")

return {
  color_scheme         = "OneDark (base16)",
  font_size            = 10.0,
  font                 = wezterm.font 'UDEV Gothic',
  colors               = {
    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#52ad70',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = 'black',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = '#52ad70',

    -- the foreground color of selected text
    selection_fg = 'black',
    -- the background color of selected text
    selection_bg = '#fffacd',
  }
}
