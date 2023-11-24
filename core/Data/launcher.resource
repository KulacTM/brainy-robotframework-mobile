*** Settings ***
Library    AppiumLibrary


*** Variables ***
${CONNECTION_URL}     http://127.0.0.1:4723    # Адрес сервера
${AUTOMATION_NAME}    UiAutomator2    # Драйвер автоматизации
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   13
${DEVICE_NAME}        poco
${UDID}            6c01a765           # Можно найти через adb devices
${APP_PACKAGE}     ru.afisha.android
${APP_ACTIVITY}    ru.afishaog.android.presentation.app.AppActivity


*** Keywords ***
Open App
    Open Application    
    ...    remote_url=${CONNECTION_URL}
    ...    automationName=${AUTOMATION_NAME}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}    
    ...    deviceName=${DEVICE_NAME}    
    ...    udid=${UDID}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}
