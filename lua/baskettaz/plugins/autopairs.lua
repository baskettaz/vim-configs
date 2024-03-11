local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
  return 
end

autopairs.setup({
  check_ts = true, -- enable treesitter
  ts_config = {
    lua = {"string"},
    javascript = {"template_string"},
    java = false,
  },
})


-- import nvim-cmp plugin safely (completions plugin)
local cmp_setup, cmp = pcall(require,"cmp")
if not cmp_setup  then
  return 
end

