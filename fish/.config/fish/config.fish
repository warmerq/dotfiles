# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
set fish_custom $HOME/dotfiles/oh-my-fish


# android sdk, should be prior to the plugin `android-sdk`
set -x ANDROID_SDK_ROOT /Users/mengwu/Library/Android/sdk

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
Plugin 'android-sdk'

# custom plugins
Plugin 'boot2docker'

function fish_user_key_bindings
  bind \cr percol_select_history
end

# docker
set -x DOCKER_CERT_PATH /Users/mengwu/.boot2docker/certs/boot2docker-vm
set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_TLS_VERIFY 1

# nvm
bass export NVM_DIR="/Users/mengwu/.nvm"
bass [ -s "$NVM_DIR/nvm.sh" ]; and bass . "$NVM_DIR/nvm.sh"  # This loads nvm
