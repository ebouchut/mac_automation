------------------------------------------------------------
# Auth: Christopher Stone
# dCre: 2015/07/26 03:53
# dMod: 2016/04/15 09:08
# Appl: System Preferences & System Events
# Task: Bring up System Prefs with App Shortcuts Selected
# Tags: @Applescript, @Script, @System_Events, @System_Preferences, @Keyboard, @App_Shortcuts
------------------------------------------------------------

with timeout of 10 seconds
  
  tell application "System Preferences"
    if not running then run # Works around 'activate' bug.
    reveal anchor "shortcutsTab" of pane id "com.apple.preference.keyboard"
    activate
  end tell
  
  tell application "System Events"
    tell process "System Preferences"
      set frontmost to true
      tell (first window whose subrole is "AXStandardWindow")
        
        repeat until table 1 of scroll area 1 of splitter group 1 of tab group 1 exists
          delay 0.1
        end repeat
        
        tell table 1 of scroll area 1 of splitter group 1 of tab group 1
          tell last row
            set value of attribute "AXSelected" to true
          end tell
        end tell
        
      end tell
    end tell
  end tell
  
end timeout

------------------------------------------------------------