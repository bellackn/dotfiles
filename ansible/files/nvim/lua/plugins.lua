local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    use "dracula/vim"
    use "scrooloose/nerdtree"

    use { "vim-airline/vim-airline", config = function() require"plugincfg.vim-airline" end}
    use "vim-airline/vim-airline-themes"

    -- Programming in general
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"
    use "jiangmiao/auto-pairs"
    use "cespare/vim-toml"

    -- Rust
    use "rust-lang/rust.vim"
    use "neovim/nvim-lspconfig"
    use "simrat39/rust-tools.nvim"

    use "ryanoasis/vim-devicons"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

end)
