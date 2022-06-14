local null_ls = require("null-ls")

-- register any number of sources simultaneously
local sources = {
   -- Eslint 
   null_ls.builtins.code_actions.eslint,
   null_ls.builtins.code_actions.eslint_d,
}

null_ls.setup({ sources = sources })
