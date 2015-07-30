# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
#Theme 'robbyrussell'
Theme 'bobthefish'
Plugin 'theme'
Plugin 'z'
Plugin 'tmux'
Plugin 'python'
Plugin 'pyenv'
Plugin 'percol'
Plugin 'jump'
Plugin 'emacs'
Plugin 'brew'



function fish_user_key_bindings
  bind \cr percol_select_history
end

set -x DOCKER_CERT_PATH /Users/mengwu/.boot2docker/certs/boot2docker-vm
set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_TLS_VERIFY 1
