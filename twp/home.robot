***Settings***

Library     AppiumLibrary

***Test Cases****
Deve abrir a tela principal
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk
    
    ${element}=     Set Variable        id=io.qaninja.android.twp:id/mi_description

    Wait Until Element Is Visible       ${element}
    Element Text Should Be              ${element}          Training Wheels Protocol \n Mobile Version
    Close Application