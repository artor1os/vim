#!/usr/bin/fish

function remove-submodule -a path
    git submodule deinit $path; and \
    git rm $path; and \
    rm -rf .git/modules/$path; and \
    git commit -m "Remove submodule $path"
end
remove-submodule $argv
