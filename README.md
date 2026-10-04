# Hello 👋🏼

On Apple Silcon Mac laptops, Closed-Display Mode may not work as expected after connecting or disconnecting your Mac from an external power source such as a power adapter or display with power delivery. To avoid any issues, you can install a script and configuration file that addresses the issue. 

I'm truely sorry for this, but Apple provides no other way. Apple thinks they know better than you do, and won't allow you to permit Amphetamine to directly install the script and configuration file needed to avoid issues with Closed-Display Mode. To get things to "just work" nowadays, you have to do it yourself it seems. 🔨💪🏼

---

# How To Install Power Protect

1. <b>[Download the Power Protect script](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> and install it in the following location:<BR>
    ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Download the Power Protect configuration file](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> and install it in the following location:<BR>
    ```/private/etc/sudoers.d/```

3. Open Terminal.app from ```/Applications/Utilities/```, then copy & paste the following command into a Terminal window:<BR>

    ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

   then press the Return key to execute the command

---

# Troubleshooting Closed-Display Mode

The built-in display turning off when the lid is closed is expected. The Mac itself should remain awake while an Amphetamine session has Closed-Display Mode enabled.

After a macOS update, Amphetamine can sometimes report that Closed-Display Mode is enabled even though the system setting was not applied. Check both states while a session is active:

```sh
osascript -e 'tell application "Amphetamine" to closed display mode enabled'
pmset -g | awk '/SleepDisabled/{print $2}'
```

The first command should return `true` and the second should return `1`. If Amphetamine returns `true` while `SleepDisabled` is `0`:

1. End the current Amphetamine session and start a new one. This makes Amphetamine run Power Protect again.
2. Run the two checks above again.
3. If `SleepDisabled` is still `0`, reinstall both Power Protect files from the links above and restart the session.

To confirm whether the Mac actually slept when the lid was closed, run:

```sh
pmset -g log | grep 'Clamshell Sleep'
```

Do not leave `pmset disablesleep 1` enabled manually. Power Protect should manage the setting with the Amphetamine session so normal sleep behavior is restored when the session ends. See [issue #19](https://github.com/x74353/Amphetamine/issues/19) for a related state mismatch.


