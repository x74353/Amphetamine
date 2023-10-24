# こんにちは👋🏼

Apple Silcon Mac ラップトップでは、電源アダプタや電力供給機能付きディスプレイなどの外部電源に Mac を接続または切断した後、クローズドディスプレイ モードが期待どおりに動作しない場合があります。 問題を回避するには、問題に対処するスクリプトと構成ファイルをインストールします。

誠に申し訳ございませんが、Apple ではそれ以外の方法を提供しておりません。 Apple は、自分たちの方があなたよりも知識があると考えており、クローズドディスプレイ モードの問題を回避するために必要なスクリプトと設定ファイルをアンフェタミンが直接インストールすることを許可しません。 現代では、物事を「うまく機能させる」には、自分でやらなければならないようです。 🔨💪🏼

---

# パワープロテクトのインストール方法

1. <b>[Power Protect スクリプトをダウンロード](https://raw.githubusercontent.com/x74353/Amphetmine/master/Files/PowerProtect_Script.zip)</b> し、次の場所にインストールします。<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetmine/```

2. <b>[Power Protect 構成ファイルをダウンロード](https://raw.githubusercontent.com/x74353/Amphetmine/master/Files/PowerProtect_Configuration.zip)</b> し、次の場所にインストールします。<BR >
     ```/private/etc/sudoers.d/```

3. ```/Applications/Utilities/``` から Terminal.app を開き、次のコマンドをコピーしてターミナル ウィンドウに貼り付けます。<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    次にReturnキーを押してコマンドを実行します
