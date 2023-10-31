*** Settings ***
Resource    onboarding.resource


*** Test Cases ***
Allow Location And Change Town
    [Documentation]    Онбординг с разрешением геолокации и подтверждением выбранного города

    launcher.Open App

    onboarding.Allow Location
    onboarding.Confirm Town
    onboarding.Allow Notifications
    Wait Until Page Contains Element    ${VERTICAL_FEATURED_IMAGE}
