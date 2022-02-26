# Mac Automation

This is where I put scripts I use to **automate workflows on my Mac** 
in [Keyboard Meastro](https://www.keyboardmaestro.com) 
and [Hazel](https://www.noodlesoft.com/).

With regards to the scripts, credit goes to their original authors, 
because  as of now I only dabble with Applescript and use scripts 
that make the job done.

## Add a Conditional Activation Group for Brave and Chrome
The goal is to define a define automations (triggers and actions) for both of these Web browsers at the same time.
Here is how to do this:
- In **`BetterTouchTool`**
- In the first column named **`Group & Top Level Triggers`** 
    - Click the **`+`** sign, 
    - Select **`Create Conditional Activation Group`** in the drop down menu
    - Select `Any` of the following are true
    - Add a condition **`Bundle identifier`** → **`contains`** → **`com.google.Chrome`**
    - Add a condition **`Bundle identifier`** → **`contains`** → **`com.brave.Browser`**
The case matters in the bundle identifier value.

## Typing ⌘K in System Preferences Opens the App Keyboard Shortcuts

In **`BetterTouchTool`**, 
for the **`System Preferences`** App, 
create the **`Keyboard Shortcut`**  `⌘K` 
that runs [this AppleScript](system/system_preferences/system_preferences_app_shortcuts.scpt)

## 3 Finger Click (Trackpad Trigger) Copy the Current Browser URL

In **`BetterTouchTool`**, 
for the **`Brave or Chrome`** App,
create the **`3 Finger Click`** trigger 
so that it runs the actions:
- **`⌘L`**  
- **`⌘C`**

