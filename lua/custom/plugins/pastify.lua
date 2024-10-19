return {
  'TobinPalmer/pastify.nvim',
  cmd = { 'Pastify', 'PastifyAfter' },
  config = function()
    require('pastify').setup {
      opts = {
        absolute_path = false,
        save = 'local_file',
        local_path = '/assets/img/',
        apikey = '841c4a51f2433845daca99eaa91cd47e', -- Needed if you want to save online.
        default_ft = 'markdown',
      },
      ft = { -- Custom snippets for different filetypes, will replace $IMG$ with the image url
        html = '<img src="$IMG$" alt="">',
        markdown = '![]($IMG$)',
        tex = [[\includegraphics[width=\linewidth]{$IMG$}]],
        css = 'background-image: url("$IMG$");',
        js = 'const img = new Image(); img.src = "$IMG$";',
        xml = '<image src="$IMG$" />',
        php = '<?php echo "<img src="$IMG$" alt="">"; ?>',
        python = '# $IMG$',
        java = '// $IMG$',
        c = '// $IMG$',
        cpp = '// $IMG$',
        swift = '// $IMG$',
        kotlin = '// $IMG$',
        go = '// $IMG$',
        typescript = '// $IMG$',
        ruby = '# $IMG$',
        vhdl = '-- $IMG$',
        verilog = '// $IMG$',
        systemverilog = '// $IMG$',
        lua = '-- $IMG$',
      },
    }
  end,
}
