# Hallo 👋🏼

Op Apple Silcon Mac-laptops werkt de gesloten beeldschermmodus mogelijk niet zoals verwacht nadat u uw Mac hebt aangesloten op of losgekoppeld van een externe voedingsbron, zoals een lichtnetadapter of een beeldscherm met stroomvoorziening. Om problemen te voorkomen, kunt u een script- en configuratiebestand installeren waarmee het probleem wordt opgelost.

Het spijt me echt, maar Apple biedt geen andere oplossing. Apple denkt dat zij het beter weten dan jij, en staat niet toe dat je Amphetamine rechtstreeks het script en configuratiebestand laat installeren dat nodig is om problemen met de Closed-Display Mode te voorkomen. Om dingen tegenwoordig ‘gewoon te laten werken’, moet je het blijkbaar zelf doen. 🔨💪🏼

---

# Hoe Power Protect te installeren

1. <b>[Download het Power Protect-script](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> en installeer het op de volgende locatie:<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Download het Power Protect-configuratiebestand](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> en installeer het op de volgende locatie:<BR >
     ```/private/etc/sudoers.d/```

3. Open Terminal.app vanuit ```/Applications/Utilities/```, kopieer en plak vervolgens de volgende opdracht in een Terminal-venster:<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    druk vervolgens op de Return-toets om de opdracht uit te voeren
