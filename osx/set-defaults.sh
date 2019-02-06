# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
#defaults write -g InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run the screensaver if we're in the bottom-left hot corner.
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


mkdir -p ~/Library/KeyBindings
printf '{\n"~ " = ("insertText:", " ");\n}\n' > ~/Library/KeyBindings/DefaultKeyBinding.dict

# animation speed
# defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
# defaults write com.apple.dock springboard-show-duration -int 0
# defaults write com.apple.dock springboard-hide-duration -int 0
# defaults write com.apple.dock expose-animation-duration -float 0.02
# defaults write com.apple.dock workspaces-edge-delay -float 0.1

# keep quicklook in front
# defaults write com.apple.Finder QLHidePanelOnDeactivate 0

defaults write com.apple.screencapture location ~/Screenshots/

defaults write com.apple.finder CreateDesktop false
