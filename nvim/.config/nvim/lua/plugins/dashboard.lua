return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 __  __     ______     __   __       __     __     ______    
/\ \/ /    /\  ___\   /\ "-.\ \     /\ \   /\ \   /\  ___\   
\ \  _"-.  \ \  __\   \ \ \-.  \   _\_\ \  \ \ \  \ \  __\   
 \ \_\ \_\  \ \_____\  \ \_\\"\_\ /\_____\  \ \_\  \ \_____\ 
  \/_/\/_/   \/_____/   \/_/ \/_/ \/_____/   \/_/   \/_____/ 
    ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
