execute 'install oh-my-fish' do
  command 'curl -L http://get.oh-my.fish | fish'
  not_if "test -d /Users/fukuiretu/.config/omf"
end

remote_file '/Users/fukuiretu/.config/fish/config.fish'
remote_file '/Users/fukuiretu/.config/fish/conf.d/aliases.fish'
remote_file '/Users/fukuiretu/.config/fish/conf.d/go.fish'
remote_file '/Users/fukuiretu/.config/fish/conf.d/hub.fish'
remote_file '/Users/fukuiretu/.config/fish/conf.d/peco.fish'
