function ff --description 'fzf file preview with kitty image support'
    fzf --preview 'sh -c "
        case \$(file --mime-type -b {}) in 
            image/*) 
                kitty icat --clear --transfer-mode=memory --stdin=no --place=\${FZF_PREVIEW_COLUMNS}x\${FZF_PREVIEW_LINES}@0x0 {} 
                ;; 
            *) 
                bat --style=numbers --color=always {} 
                ;; 
        esac
    "'
end
