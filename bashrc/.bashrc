#
# ~/.bashrc
#

# Display random artwork when opening terminal
f=3 b=4
for j in f b; do
  for i in {0..7}; do
	printf -v $j$i %b "\e[${!j}${i}m"
  done
done
for i in {0..7}; do
	printf -v fbright$i %b "\e[9${i}m"
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

cat << EOF

 $f1███$d$fbright$fbright1▄$t  $f2███$d$fbright$fbright2▄$t  $f3███$d$fbright3▄$t  $f4███$d$fbright4▄$t  $f5███$d$fbright5▄$t  $f6███$d$fbright6▄$t  $f7███$d$fbright7▄$t  
 $f1███$d$fbright$fbright1█$t  $f2███$d$fbright$fbright2█$t  $f3███$d$fbright3█$t  $f4███$d$fbright4█$t  $f5███$d$fbright5█$t  $f6███$d$fbright6█$t  $f7███$d$fbright7█$t  
 $f1███$d$fbright$fbright1█$t  $f2███$d$fbright$fbright2█$t  $f3███$d$fbright3█$t  $f4███$d$fbright4█$t  $f5███$d$fbright5█$t  $f6███$d$fbright6█$t  $f7███$d$fbright7█$t  
 $d$fbright1 ▀▀▀   $fbright2▀▀▀   $fbright3▀▀▀   $fbright4▀▀▀   $fbright5▀▀▀   $fbright6▀▀▀   $fbright7▀▀▀  $t
EOF

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use Starship shell prompt 
eval "$(starship init bash)"

# Set alias
alias clear='clear && source ~/.bashrc'
alias ls='ls --color=auto'

# Set PATH
export PATH="$HOME/.local/bin:$PATH"
