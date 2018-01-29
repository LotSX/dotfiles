files=$(ls -1)

for file in $files; do
  echo "Symlinking $file"
  ln -s ~/dotfiles/$file ~/.$file
done
