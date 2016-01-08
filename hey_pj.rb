#! /usr/bin/env ruby

puts 'Installing Homebrew and Cask...'
`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`
`brew install cask`

puts 'Installing tree...'
`brew install tree`

puts 'Installing Google Chrome...'
`brew cask install google-chrome`

puts 'Installing Flycut...'
`brew cask install flycut`

puts 'Installing iTerm...'
`brew cask install iterm2`

puts 'Installing ShiftIt...'
`brew cask install shiftit`

puts 'Installing f.lux...'
`brew cask install flux`

puts 'Installing Bash it...'
`git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it`
`~/.bash_it/install.sh`
`echo "export BASH_IT_THEME='envy'" >> ~/.bashrc`

puts 'Adding git aliases (co, br, ci, and st)...'
`git config --global alias.co checkout`
`git config --global alias.br branch`
`git config --global alias.ci commit`
`git config --global alias.st status`

puts 'Binding up/down (and ^P/^N) to search command history...'
File.open('~/.bashrc', 'a') do |f|
  f.puts %q(bind '"\e[A": history-search-backward')
  f.puts %q(bind '"\e[B": history-search-forward')
  f.puts %q(bind '"\020": history-search-backward')
  f.puts %q(bind '"\016": history-search-forward')
end
