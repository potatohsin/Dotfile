while read file
do 
  source "$ZDOTDIR/$file.zsh"
done <<-EOF
theme
env
aliases
options
plugins
EOF

clear