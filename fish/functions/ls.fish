function ls -d 'exa instead of ls'
  exa --git --icons $argv
end

function ll -d 'alias ls -l'
  ls -l $argv
end

function la -d 'alias ls -la'
  ls -la $argv
end
