return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  -- return ensure installed plugins
  config = function()
    require("mason").setup({
      config = {
        ["mason.lspconfig"] = {
          -- for the dart lsp server and the flutter lsp server
          -- hope this works ...
          dart = {
            -- this is the macos path to the dart analysis server
            cmd = {
              "dart",
              -- just trying this as per the current docs it makes sense
              "language-server --client-id nvim.flutter --client-version 1.2",
              -- "/Users/saabir/Documents/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot",
              "lsp",
            },
            filetypes = { "dart" },
            root_dir = require("lspconfig").util.root_pattern("pubspec.yaml"),
            init_options = {
              closingLabels = true,
              flutterOutline = true,
            },
          },
        },
      },
    })
  end,
}
-- lsp.setup_servers({'dartls', force = true})
-- these settings might work for the dart lsp server
-- r
-- not sure that to put in my-editor.my-plugin
-- dart language-server --client-id my-editor.my-plugin --client-version 1.2
