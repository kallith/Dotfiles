## dotfiles

My configuration files directories ready to be [stow](http://www.gnu.org/software/stow/)-ed.
The script [restow](./restow) takes one positional argument, the directory name and symlinks contents of the given directory to `$HOME`.

So to setup fish one simply invokes
```bash
./restow fish
```

