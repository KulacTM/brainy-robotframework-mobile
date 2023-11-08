*** Settings ***
Resource    profile.resource
Suite Setup        common.Suite Setup
Suite Teardown     common.Suite Teardown
Test Setup       profile.Precondition: At Registration Form
Test Teardown    common.Close App


*** Variables ***
${valid_email}    jexiges463@glalen.com
${valid_password}    Qwerty123

*** Test Cases ***
Standard Registration

    Input Email And Password
    Push Register Button
    Wait Until Page Contains Element    ${PROFILE_REGISTRATION_COMPLETE}


*** Keywords ***
Input Email And Password

    Input Text    ${PROFILE_EMAIL_FIELD}    text=${valid_email}
    Input Password    ${PROFILE_PASSWORD_FIELD}    text=${valid_password}

Push Register Button

    Click Element   ${PROFILE_CONFIRM_REGISTRATION}
