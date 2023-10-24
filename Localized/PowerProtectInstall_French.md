# Bonjour 👋🏼

Sur les ordinateurs portables Apple Silcon Mac, le mode d'affichage fermé peut ne pas fonctionner comme prévu après avoir connecté ou déconnecté votre Mac d'une source d'alimentation externe telle qu'un adaptateur secteur ou un écran avec alimentation. Pour éviter tout problème, vous pouvez installer un script et un fichier de configuration qui résolvent le problème.

Je suis vraiment désolé pour cela, mais Apple ne propose aucun autre moyen. Apple pense savoir mieux que vous et ne vous permettra pas d'autoriser Amphetamine à installer directement le script et le fichier de configuration nécessaires pour éviter les problèmes avec le mode d'affichage fermé. Pour que les choses « fonctionnent » de nos jours, il faut le faire soi-même, semble-t-il. 🔨💪🏼

---

# Comment installer Power Protect

1. <b>[Téléchargez le script Power Protect](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> et installez-le à l'emplacement suivant :<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Téléchargez le fichier de configuration Power Protect](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> et installez-le à l'emplacement suivant :<BR >
     ```/private/etc/sudoers.d/```

3. Ouvrez Terminal.app depuis ```/Applications/Utilities/```, puis copiez et collez la commande suivante dans une fenêtre de Terminal :<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    puis appuyez sur la touche Retour pour exécuter la commande
