*** Settings ***
Documentation    Кейворды для экрана онбординга
Resource    ../common.resource


*** Keywords ***
Allow Location
    [Documentation]    Разрешить геолокацию

    Wait Until Page Contains Element    ${ONBOARDING_SUBMIT_BTN}     timeout=10s
    Click Element    ${ONBOARDING_SUBMIT_BTN} 

    Wait Until Page Contains Element    ${PERMISSION_FOREGROUND}
    Click Element    ${PERMISSION_FOREGROUND}

Confirm Town
    [Documentation]    Подтвердить город

    Wait Until Page Contains Element    ${ONBOARDING_CONFIRM_CITY_BTN}
    Click Element    ${ONBOARDING_CONFIRM_CITY_BTN}

Allow Notifications
    [Documentation]    Разрешить уведомления

    Wait Until Page Contains Element    ${ONBOARDING_SUBMIT_BTN} 
    Click Element    ${ONBOARDING_SUBMIT_BTN} 

    Wait Until Page Contains Element    ${PERMISSION_ALLOW}
    Click Element    ${PERMISSION_ALLOW}