node.reverse_merge!(
  brew: {
    enable_update: true
    enable_upgrade: true
    add_repositories: %w[
      homebrew/dupes
      homebrew/versions
      homebrew/binary
      motemen/ghq
    ]
    install_packages: %w[
      fish
      vim
      tmux
      git
      hub
      tig
      ghq
      imagemagick
      ffmpeg
      wget
      rsync
      curl
      tree
      openssl
      libyaml
      readline
      jq
      peco
      rbenv
      ruby-build
      mysql
      node
      redis
      rbenv
      ruby-build
    ]
  }
)

include_recipe 'homebrew::package'
