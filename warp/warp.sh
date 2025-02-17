# viewable on any display
defaults write com.apple.spaces "app-bindings" -dict-add "dev.warp.warp-stable" "AllSpaces"
# appearance
defaults write dev.warp.Warp-stable "OverrideOpacity" -int "65"
defaults write dev.warp.Warp-stable "Spacing" -string "\"Compact\""
# hot key
defaults write dev.warp.Warp-stable "ActivationHotkeyEnabled" -bool "true"
defaults write dev.warp.Warp-stable "ActivationHotkeyKeybinding" -string "{\"ctrl\":false,\"alt\":true,\"shift\":false,\"cmd\":false,\"meta\":false,\"key\":\" \"}"
