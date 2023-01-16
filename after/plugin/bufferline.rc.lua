local status, bufferline = pcall(require, "bufferline")
if (not status) then return end
bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#1a2030',
      bg = '#16161d',
    },
    separator_selected = {
      fg = '#1a2030',
    },
    background = {
      fg = '#415179',
      bg = '#16161d'
    },
    buffer_selected = {
      fg = '#81a1f1',
      bold = true,
    },
    fill = {
      bg = '#1a2030'
    }
  },
})
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
