return {
  "kevinhwang91/nvim-hlslens",
  config = function()
    require('hlslens').setup()
    vim.keymap.set('n', 'n',
      function()
        vim.cmd("execute 'normal! ' .. v:count1 .. 'n'")
        require('hlslens').start()
      end)
    
    vim.keymap.set('n', 'N',
      function()
        vim.cmd("execute 'normal! ' .. v:count1 .. 'N'")
        require('hlslens').start()
      end)
  end
}

