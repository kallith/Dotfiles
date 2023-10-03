function upgrade --wraps='sudo pacman -Syu && pikaur -Syua && paccache -ruk0 && paccache -rk1' --description 'alias upgrade=sudo pacman -Syu && pikaur -Syua && paccache -ruk0 && paccache -rk1'
  sudo pacman -Syu && pikaur -Syua && paccache -ruk0 && paccache -rk1 $argv
end
