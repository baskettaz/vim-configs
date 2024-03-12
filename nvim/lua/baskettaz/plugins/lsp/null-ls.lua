local setup, null_ls = pcall(require,"null_ls")
if not setup then
  return
end

local formatting = null_ls.buildins.formatting
local diagnostics = null_ls.buildins.diagnostics

null_ls.setup({
  sources = {
    formatting.black,
    formatting.pylint,
  }
})
