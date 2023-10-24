# 你好👋🏼

在 Apple Silcon Mac 笔记本电脑上，将 Mac 连接到外部电源（例如电源适配器或带供电的显示器）或从外部电源断开连接后，关闭显示模式可能无法按预期工作。 为了避免出现任何问题，您可以安装解决该问题的脚本和配置文件。

对此我真的很抱歉，但苹果没有提供其他办法。 Apple 认为他们比您更了解，并且不会允许您允许 Amphetamine 直接安装避免关闭显示模式问题所需的脚本和配置文件。 如今，要让事情“正常运转”，你似乎必须自己做。 🔨💪🏼

---

# 如何安装电源保护

1. <b>[下载 Power Protect 脚本](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> 并将其安装在以下位置：<BR>
     ``/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/````

2. <b>[下载 Power Protect 配置文件](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> 并将其安装在以下位置：<BR >
     ```/private/etc/sudoers.d/```

3. 从``/Applications/Utilities/``` 打开 Terminal.app，然后将以下命令复制并粘贴到终端窗口中：<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    然后按回车键执行命令
