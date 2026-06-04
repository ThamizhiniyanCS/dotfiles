function sync-website-contents --wraps='rclone sync $HOME/Documents/website-contents website:website -v' --description 'alias sync-website-contents=rclone sync $HOME/Documents/website-contents website:website -v'
    rclone sync $HOME/Documents/website-contents website:website -v $argv
end
