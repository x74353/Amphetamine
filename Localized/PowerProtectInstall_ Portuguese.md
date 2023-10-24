# Olá 👋🏼

Em laptops Apple Silcon Mac, o modo de tela fechada pode não funcionar conforme esperado após conectar ou desconectar seu Mac de uma fonte de alimentação externa, como um adaptador de energia ou monitor com fornecimento de energia. Para evitar problemas, você pode instalar um script e um arquivo de configuração que resolva o problema.

Sinto muito por isso, mas a Apple não oferece outra maneira. A Apple acha que sabe melhor do que você e não permitirá que você permita que o Amphetamine instale diretamente o script e o arquivo de configuração necessários para evitar problemas com o modo de exibição fechada. Para fazer as coisas "simplesmente funcionarem" hoje em dia, parece que você tem que fazer isso sozinho. 🔨💪🏼

---

# Como instalar o Power Protect

1. <b>[Baixe o script Power Protect](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> e instale-o no seguinte local:<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Baixe o arquivo de configuração do Power Protect](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> e instale-o no seguinte local:<BR >
     ```/private/etc/sudoers.d/```

3. Abra Terminal.app em ```/Applications/Utilities/``` e copie e cole o seguinte comando em uma janela do Terminal:<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    em seguida, pressione a tecla Return para executar o comando
