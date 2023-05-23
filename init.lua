for _, cmd in ipairs({"git", "rg", {"fd", "fdfind"}}) do
  local name = type(cmd) == "string" and cmd or vim.inspect(cmd)
  local commands = type(cmd) == "string" and {cmd} or cmd
  local found = false

  for _, c in ipairs(commands) do
	if vim.fn.executable(c) == 1 then
		name = c
		found = true
	end
  end
  if not found then
        error(("`%s` is not installed"):format(name))
  end
end

require("Lazy")
require("options")
require("config")
