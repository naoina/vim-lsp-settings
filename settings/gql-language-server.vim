augroup vimlsp_settings_gql_language_server
  au!
  LspRegisterServer {
      \ 'name': 'gql-language-server',
      \ 'cmd': {server_info->lsp_settings#get('gql-language-server', 'cmd', [lsp_settings#exec_path('gql-language-server'), '--stdio'])},
      \ 'root_uri':{server_info->lsp_settings#get('gql-language-server', 'root_uri', lsp_settings#root_uri(extend(['package.json', 'tsconfig.json', '.gqlconfig'], g:lsp_settings_root_markers)))},
      \ 'initialization_options': lsp_settings#get('gql-language-server', 'initialization_options', {"diagnostics": "true"}),
      \ 'whitelist': lsp_settings#get('gql-language-server', 'whitelist', ['graphql']),
      \ 'blacklist': lsp_settings#get('gql-language-server', 'blacklist', []),
      \ 'config': lsp_settings#get('gql-language-server', 'config', {}),
      \ 'workspace_config': lsp_settings#get('gql-language-server', 'workspace_config', {}),
      \ }
augroup END
