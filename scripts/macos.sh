#!/bin/sh

# Mad props to https://github.com/mathiasbynens/dotfiles/blob/master/.macos 🤌

###############################################################################
# System Preferences → Keyboard → Keyboard                                    #
###############################################################################

# Key Repeat
# defaults write -g KeyRepeat -int 2 # Fast (only works after restart)

# Delay Until Repeat (only works after restart)
# defaults write -g InitialKeyRepeat -int 15 # Short

# Modifier Keys... → Caps Lock Key: Control (doesn't persist)
# hidutil property --set '{ "UserKeyMapping":[{ "HIDKeyboardModifierMappingSrc":0x700000039, "HIDKeyboardModifierMappingDst":0x700000029 }] }'

###############################################################################
# System Preferences → Dock & Menu Bar                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true # Checked

###############################################################################
# System Preferences → Mission Control → Hot Corners...                       #
###############################################################################

# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Application Windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen

# Top Left Screen Corner 
defaults write com.apple.dock wvous-tl-corner -int 3 # Application Windows
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top Right Screen Corner
defaults write com.apple.dock wvous-tr-corner -int 2 # Mission Control
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom Left Screen Corner
defaults write com.apple.dock wvous-bl-corner -int 4 # Desktop
defaults write com.apple.dock wvous-bl-modifier -int 0

# Bottom Right Screen Corner
defaults write com.apple.dock wvous-br-corner -int 4 # Desktop
defaults write com.apple.dock wvous-br-modifier -int 0

# Quit System Preferences so it doesn't muck with your settings
osascript -e 'tell application "System Preferences" to quit'

# Overwrite Chrome swipe to navigate
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE



# ###############################################################################
# # Kill affected applications                                                  #
# ###############################################################################

for app in "Activity Monitor" \
	"cfprefsd" \
	"Dock" \
	"Finder" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done