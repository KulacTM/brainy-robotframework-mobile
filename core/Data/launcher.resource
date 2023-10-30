*** Settings ***
Library    AppiumLibrary


*** Keywords ***
Open App
    Open Application    
    ...    remote_url=http://127.0.0.1:4723
    ...    automationName=UiAutomator2    
    ...    platformName=Android    
    ...    platformVersion=13    
    ...    deviceName=poco    
    ...    udid=6c01a765    
    ...    appPackage=ru.afisha.android    
    ...    appActivity=ru.afishaog.android.presentation.app.AppActivity