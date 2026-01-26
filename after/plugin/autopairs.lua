-- In your nvim-cmp config file (e.g., lua/plugins/cmp.lua)
local cmp = require('cmp')
local npairs = require('nvim-autopairs')

cmp.setup({
  -- ... your existing cmp config ...
  mapping = cmp.mapping.preset.insert({
    -- This line is essential for autopairs integration
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  })
})

npairs.setup() 

