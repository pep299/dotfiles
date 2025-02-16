# global
defaults write -g com.apple.trackpad.scaling 3
defaults write -g KeyRepeat -int "2"
defaults write -g InitialKeyRepeat -int "12"
defaults write -g AppleShowScrollBars -string "Always"

# dock
defaults write com.apple.dock "tilesize" -int "30"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "expose-group-apps" -bool "true"
##  Bottom left screen corner → Display Lock
defaults write com.apple.dock wvous-bl-corner -int "13"
defaults write com.apple.dock wvous-bl-modifier -int "0"
killall Dock

# screenshots
mkdir -p ~/screenshots
defaults write com.apple.screencapture "location" -string "~/screenshots"
killall SystemUIServer

# finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
killall Finder

# trackpad
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -bool "true"
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"
defaults write com.apple.AppleMultitouchTrackpad "SecondClickThreshold" -int "0"
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "Clicking" -bool "true"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "TrackpadThreeFingerDrag" -bool "true"

# controlcenter
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool "true"
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool "true"

# desktopservices
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"

# launchservices
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"

# Display battery level in the menu bar
defaults write com.apple.menuextra.battery "ShowPercent" -string "YES"

# Safari
## Enable the `Develop` menu and the `Web Inspector`
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool "true"
defaults write com.apple.Safari "IncludeDevelopMenu" -bool "true"
defaults write com.apple.Safari "WebKitDeveloperExtrasEnabledPreferenceKey" -bool "true"
## Enable `Debug` menu
defaults write com.apple.Safari "IncludeInternalDebugMenu" -bool "true"
## Don't remember passwords （パスワードを自動入力・記録しない）
defaults write com.apple.Safari "AutoFillPasswords" -bool false

# shortcut
## 次のウインドウを操作対象にする ⌥ + tab
defaults write com.apple.symbolichotkeys "AppleSymbolicHotKeys" -dict-add 27 "<dict><key>enabled</key><true/><key>value</key><dict><key>parameters</key><array><integer>65535</integer><integer>48</integer><integer>524288</integer></array><key>type</key><string>standard</string></dict></dict>"
## Spotlight検索を表示を無効化
defaults write com.apple.symbolichotkeys "AppleSymbolicHotKeys" -dict-add 64 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>65535</integer><integer>49</integer><integer>1048576</integer></array><key>type</key><string>standard</string></dict></dict>"
## Finderの検索ウインドウを表示を無効化
defaults write com.apple.symbolichotkeys "AppleSymbolicHotKeys" -dict-add 65 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>65535</integer><integer>49</integer><integer>1572864</integer></array><key>type</key><string>standard</string></dict></dict>"

# Viewable on any display
defaults write com.apple.spaces "app-bindings" -dict-add "dev.warp.warp-stable" "AllSpaces"

