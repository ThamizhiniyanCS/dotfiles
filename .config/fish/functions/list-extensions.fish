function list-extensions -d "Find and list all unique file extensions recursively in a directory"
    fd -t f -H -E .git | path extension | sort -u
end
