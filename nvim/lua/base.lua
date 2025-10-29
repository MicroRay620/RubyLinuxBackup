local p_file = io.popen("ls -a " .. vim.fn.stdpath("config") .. "/lua/base/")
for filename in p_file:lines() do
    if string.find(filename, "%.lua$") then
        require("base." .. filename:gsub("%.lua$", ""))
    end
end
