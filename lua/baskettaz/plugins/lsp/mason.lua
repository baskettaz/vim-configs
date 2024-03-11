local mason_status, mason = pcall(require,"mason")
if not mason_status then
  return 
end

local mason_lspconfig_status, mason_lspconfig = pcall(require,"mason-lspconfig")
if not mason_lspconfig_status then
  return 
end

local mason_lspconfig_status , mason_null_ls = pcall(require,"mason-null-ls")
if not mason_null_ls_status then
  return 
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed ={
--    "tsserver",     -- javascript
--    "html-lsp",
--    "cssls",
--    "tailwindcss",
    "lua_ls",
    "texlab",       -- LaTeX
    "pylsp",        -- python,
    "rust_analyzer",
--    "bashls",
    "clangd",       -- C / C++
--   "dockerls",
--  "awk_ls"
  }
})

mason_null_ls.setup({
  ensure_installed ={
    "black",
    "pylint"
  }

})
