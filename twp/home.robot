***Settings***

Library     AppiumLibrary

***Test Cases****
Deve abrir a tela principal
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk
    
    Wait Until Page Contains    Training Wheels Protocol Mobile Version    5
    Close Application