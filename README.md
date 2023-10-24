# Hello 👋🏼

On Apple Silcon Mac laptops, Closed-Display Mode may not work as expected after connecting or disconnecting your Mac from an external power source such as a power adapter or display with power delivery. To avoid any issues, you can install a script and configuration file that addresses the issue. 

I'm truely sorry for this, but Apple provides no other way. Apple thinks they know better than you do, and won't allow you to permit Amphetamine to directly install the script and configuration file needed to avoid issues with Closed-Display Mode. To get things to "just work" nowadays, you have to do it yourself it seems. 🔨💪🏼

---

# How To Install Power Protect

1. <b>[Download the Power Protect script](https://github.com/x74353/Amphetamine/main/Files/powerProtect.scpt)</b> and install it in the following location:<BR>
    ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Download the Power Protect configuration file](https://github.com/x74353/Amphetamine/main/Files/amphetamine_PowerProtect)</b> and install it in the following location:<BR>
    ```/private/etc/sudoers.d/```

3. Open Terminal.app from ```/Applications/Utilities/```, then copy & paste the following command into a Terminal window:<BR>

    ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

   then press the Return key to execute the command



