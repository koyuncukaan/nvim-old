require('shepherd.base')
require('shepherd.highlights')
require('shepherd.maps')
require('shepherd.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('shepherd.macos')
end
if is_win then
  require('shepherd.windows')
end
