vim.g['denops#deno'] = '/home/ymir/.deno/bin/deno'

return {
  {"Shougo/ddc.vim",
    dependencies = {
      "vim-denops/denops.vim",
      "Shougo/ddc-ui-native",
      "Shougo/ddc-source-around",
      "Shougo/ddc-filter-matcher_head",
      "Shougo/ddc-filter-sorter_rank",
    },
    config = function()
      vim.fn["ddc#custom#patch_global"]('ui', 'native')
      vim.fn["ddc#custom#patch_global"]('sources', {'around'})
      vim.fn["ddc#custom#patch_global"]('sourceOptions', {
        _ = {
          matchers = {'matcher_head'},
          sorters = {'sorter_rank'},
        }
      })

      vim.fn["ddc#enable"]()
    end,
  }
}
