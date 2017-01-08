node.reverse_merge!(
  rbenv: {
    user: 'fukuiretu',
    global: '2.3.3',
    versions: %w[
      2.3.3
      2.1.1
    ],
  },
  'rbenv-default-gems': {
    'default-gems': %w[
      bundler
      rails
      itamae
      rubocop
      terminal-notifier
    ],
    install: true,
  },
)

include_recipe 'rbenv::user'
