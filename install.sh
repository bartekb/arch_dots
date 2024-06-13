sudo pacman -S teams-for-linux lazygit tmux gcc readline make google-chrome ripgrep fd alacritty openssh mc unzip git neovim ttf-jetbrains-mono-nerd zoxide exa fzf zsh starship curl git asdf-vm autoconf automake paru jq datagrip datagrip-jre flameshot btop
 
sudo systemctl start sshd
sudo systemctl enable sshd
sudo chsh -s /usr/bin/zsh bb


asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add postgres
asdf install
asdf global postgres 14.7
asdf global nodejs 20.14.0
bundle update ruby-lsp prism solargraph
pg_ctl
sudo su - postgres
createuser --interactive --pwprompt
nvim /home/bb/.asdf/installs/postgres/14.7/data/postgresql.conf
nvim /home/bb/.asdf/installs/postgres/14.7/data/pg_hba.conf
createdb rs_dev
createdb pc_dev
psql -U tlc -d rs_dev -f ~/Downloads/TLC\ DEV/rs-2023_11_24_21_27_07-dump.sql
psql -U tlc -d pc_dev -f ~/Downloads/TLC\ DEV/pc-2023_11_24_21_26_45-dump.sql
git config --global user.email "bartosz.bubacz@gmail.com"
git config --global user.name "Bartosz Bubacz"
git config --global user.fullname "Bartosz Bubacz"
sudo pacman -S lazygit
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

paru -S aws-session-manager-plugin

