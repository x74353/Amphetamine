# Hallo 👋🏼

Auf Apple Silcon Mac-Laptops funktioniert der geschlossene Anzeigemodus möglicherweise nicht wie erwartet, nachdem Sie Ihren Mac an eine externe Stromquelle wie ein Netzteil oder ein Display mit Stromversorgung angeschlossen oder davon getrennt haben. Um Probleme zu vermeiden, können Sie ein Skript und eine Konfigurationsdatei installieren, die das Problem behebt.

Es tut mir wirklich leid, aber Apple bietet keine andere Möglichkeit. Apple geht davon aus, dass sie es besser wissen als Sie, und erlaubt Ihnen nicht, Amphetamine die direkte Installation des Skripts und der Konfigurationsdatei zu gestatten, die erforderlich sind, um Probleme mit dem geschlossenen Anzeigemodus zu vermeiden. Damit die Dinge heutzutage „einfach funktionieren“, muss man es anscheinend selbst tun. 🔨💪🏼

---

# So installieren Sie Power Protect

1. <b>[Laden Sie das Power Protect-Skript herunter](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> und installieren Sie es am folgenden Speicherort:<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Laden Sie die Power Protect-Konfigurationsdatei herunter](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> und installieren Sie sie am folgenden Speicherort:<BR >
     ```/private/etc/sudoers.d/```

3. Öffnen Sie Terminal.app unter „/Applications/Utilities/“ und kopieren Sie dann den folgenden Befehl und fügen Sie ihn in ein Terminalfenster ein:<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    Drücken Sie dann die Eingabetaste, um den Befehl auszuführen
