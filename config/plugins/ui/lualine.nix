_: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        theme = "catppuccin";
      };
      disabled_filetypes = {
        statusline = ["startup" "alpha"];
      };
      extensions = [
        "fzf"
        "neo-tree"
      ];
      sections = {
        lualine_a = [
          # {
          #   # name = "mode";
          #   # icon = " ";
          # }
          "mode"
          {
            icon = " ";
          }
        ];
        lualine_b = [
          "branch"
          {
            icon = "";
          }
          "diff"
          {
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
          }
        ];
        lualine_c = [
          "diagnostics"
          {
            sources = ["nvim_lsp"];
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          }
          "navic"
        ];
        lualine_x = [
          "filetype"
          {
            icon_only = true;
            separator = "";
            padding = {
              left = 1;
              right = 0;
            };
          }
          "filename"
          {
            path = 1;
          }
          # {
          #   name.__raw = ''
          #     function()
          #       local icon = " "
          #       local status = require("copilot.api").status.data
          #       return icon .. (status.message or " ")
          #     end,
          #
          #     cond = function()
          #      local ok, clients = pcall(vim.lsp.get_clients, { name = "copilot", bufnr = 0 })
          #      return ok and #clients > 0
          #     end,
          #   '';
          # }
        ];
        lualine_y = [
          "progress"
        ];
        lualine_z = [
          "location"
        ];
      };
    };
  };
}
