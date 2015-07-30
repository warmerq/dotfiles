# copy from https://github.com/nvie/dotfiles/tree/master/.config/fish/functions
function abspath -d 'Calculates the absolute path for the given path'
    set -l cwd ''
    pushd $argv[1]; and set cwd (pwd); and popd
    echo $cwd
end
