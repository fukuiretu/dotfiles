node.reverse_merge!(
  rbenv: {
    user: 'fukuiretu',
    global: '2.3.3',
    versions: %w[
      2.3.3
      2.1.1
    ],
  }
)

include_recipe 'rbenv::user'
