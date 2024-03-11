local setup, gitsings = pcall(require,"gitsings")
if not setup then
  return
end

gitsings.setup()
