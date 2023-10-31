*** Settings ***
Documentation    Кейворды для экрана онбординга
Resource    ../common.resource


*** Keywords ***
Allow Location
    [Documentation]    Разрешить геолокацию

    Wait Until Page Contains Element    locator=ru.afisha.android:id/fragOnboardinSubmitBtn    timeout=10s
    Click Element    locator=ru.afisha.android:id/fragOnboardinSubmitBtn

    Wait Until Page Contains Element    locator=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    Click Element    com.android.permissioncontroller:id/permission_allow_foreground_only_button

Confirm Town
    [Documentation]    Подтвердить город

    Wait Until Page Contains Element    android:id/button1
    Click Element    android:id/button1

Allow Notifications
    [Documentation]    Разрешить уведомления

    Wait Until Page Contains Element    ru.afisha.android:id/fragOnboardinSubmitBtn
    Click Element    ru.afisha.android:id/fragOnboardinSubmitBtn

    Wait Until Page Contains Element    com.android.permissioncontroller:id/permission_allow_button
    Click Element    com.android.permissioncontroller:id/permission_allow_button