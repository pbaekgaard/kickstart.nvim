return {
  'vhyrro/luarocks.nvim',
  priority = 9999, -- this plugin needs to run before anything else
  opts = {
    rocks = { 'magick' },
  },
}
