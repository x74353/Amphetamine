# 안녕👋🏼

Apple Silcon Mac 노트북에서는 전원 어댑터나 전원 공급 디스플레이와 같은 외부 전원에 Mac을 연결하거나 연결 해제한 후 폐쇄형 디스플레이 모드가 예상대로 작동하지 않을 수 있습니다. 문제를 방지하려면 문제를 해결하는 스크립트와 구성 파일을 설치할 수 있습니다.

정말 죄송합니다. 하지만 Apple에서는 다른 방법을 제공하지 않습니다. Apple은 자신들이 귀하보다 더 잘 알고 있다고 생각하며 폐쇄 디스플레이 모드 관련 문제를 방지하는 데 필요한 스크립트 및 구성 파일을 Amphetamine이 직접 설치하도록 허용하지 않습니다. 요즘에는 일이 "제대로 작동"하도록 하려면 직접 해야 하는 것 같습니다. 🔨💪🏼

---

# 전원 보호 설치 방법

1. <b>[Power Protect 스크립트를 다운로드](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b>하고 다음 위치에 설치합니다.<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Power Protect 구성 파일을 다운로드](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b>하고 다음 위치에 설치합니다.<BR >
     ```/private/etc/sudoers.d/```

3. ``/Applications/Utilities/```에서 Terminal.app을 열고 다음 명령을 복사하여 터미널 창에 붙여넣습니다.<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    그런 다음 Return 키를 눌러 명령을 실행하십시오.
