return {
   "nvim-lualine/lualine.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },

   -- Eviline config for lualine Author: shadmansaleh
   -- Credit: glepnir
   config = function()
      local lualine = require("lualine")
      require("lualine").setup({
         options = {
            icons_enabled = true,
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = {
               statusline = {},
               winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            always_show_tabline = true,
            globalstatus = false,
            refresh = {
               statusline = 100,
               tabline = 100,
               winbar = 100,
            },
         },
         sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = { "filename" },
            lualine_x = { "fileformat", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
         },
         inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { "filename" },
            lualine_x = { "location" },
            lualine_y = {},
            lualine_z = {},
         },
         tabline = {},
         winbar = {},
         inactive_winbar = {},
         extensions = {},
      })
      --- NOTE: show macros in lualine -----
      -- Now don't forget to initialize lualine
      lualine.setup(config)
      local function show_macro_recording()
         local recording_register = vim.fn.reg_recording()
         if recording_register == "" then
            return ""
         else
            return "Recording @" .. recording_register
         end
      end

      lualine.setup({
         sections = {
            lualine_b = {
               {
                  "macro-recording",
                  fmt = show_macro_recording,
               },
            },
         },
      })
      vim.api.nvim_create_autocmd("RecordingEnter", {
         callback = function()
            lualine.refresh({
               place = { "statusline" },
            })
         end,
      })

      vim.api.nvim_create_autocmd("RecordingLeave", {
         callback = function()
            -- This is going to seem really weird!
            -- Instead of just calling refresh we need to wait a moment because of the nature of
            -- `vim.fn.reg_recording`. If we tell lualine to refresh right now it actually will
            -- still show a recording occuring because `vim.fn.reg_recording` hasn't emptied yet.
            -- So what we need to do is wait a tiny amount of time (in this instance 50 ms) to
            -- ensure `vim.fn.reg_recording` is purged before asking lualine to refresh.
            local timer = vim.loop.new_timer()
            timer:start(
               50,
               0,
               vim.schedule_wrap(function()
                  lualine.refresh({
                     place = { "statusline" },
                  })
               end)
            )
         end,
      })
   end,
}
