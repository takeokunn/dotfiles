function fish_user_key_bindings
    # my keybind
    bind \cr peco_select_history
    bind \co peco_ghq
    bind \cq peco_z
    bind \eg magit

    # vi mode
    for mode in insert default visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings default
end
