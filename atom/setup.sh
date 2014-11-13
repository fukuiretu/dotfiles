#!/bin/bash

atom_config_dir=~/.atom
config_files=(

    config.cson
    keymap.cson
    snippets.cson
    styles.less
)

for config_file in ${config_files[@]}
do
    ln -fs ${dotfiles_dir}/atom/${config_file} ${atom_config_dir}/${config_file}
done

printf "Install atom packages? [Y/n]: " && read ANS
if [ "${ANS}" = "Y" ]; then
    echo "installing atom packages..."
    apm stars -i && apm clean
    echo "installing atom packages Done."
fi
