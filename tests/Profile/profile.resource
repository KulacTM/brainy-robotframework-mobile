*** Settings ***
Documentation    Кейворды для экрана профиля
Resource    ../common.resource


*** Keywords ***
Precondition: At Registration Form
    [Documentation]    Предусловие: на экране регистрации

    common.Launch App With Geo

    Wait Until Page Contains Element    ${MENU_PROFILE}
    Click Element    ${MENU_PROFILE}

    Wait Until Page Contains Element    ${PROFILE_LOGIN_BTN}
    Click Element    ${PROFILE_LOGIN_BTN}

    Wait Until Page Contains Element    ${PROFILE_SOCIAL_BTN}
    Click Element    ${PROFILE_SOCIAL_BTN}

    Wait Until Page Contains Element    ${PROFILE_LOGIN_TO_REGISTER}
    Click Element    ${PROFILE_LOGIN_TO_REGISTER}

    Wait Until Page Contains Element    ${PROFILE_REGISTERED_TEXT}
