*** Settings ***
Resource    onboarding.resource
Suite Setup        common.Suite Setup
Suite Teardown     common.Suite Teardown
Test Setup       common.Launch App
Test Teardown    common.Close App


*** Test Cases ***
Allow Location And Confirm Town
    [Documentation]    Онбординг с разрешением геолокации и подтверждением выбранного города

    onboarding.Allow Location
    onboarding.Confirm Town
    IF    ${PLATFORM_VERSION} >= 13    onboarding.Allow Notifications
    Wait Until Page Contains Element    ${VERTICAL_FEATURED_IMAGE}
