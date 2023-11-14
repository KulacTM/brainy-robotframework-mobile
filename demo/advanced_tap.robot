*** Settings ***
Resource           ../tests/common.resource
Suite Setup        common.Suite Setup
Suite Teardown     common.Suite Teardown
Test Setup         common.Launch App With Geo
Test Teardown      common.Close App


*** Keywords ***
Multiple Fingers Tap
    [Documentation]    Нажатие несколькими пальцами

    @{tap_position}=    Create List    900    1000    # первый палец
    @{tap_position2}=    Create List    100    100    # второй палец
    ${two_finger_tap}=    Create List    @{tap_position}    @{tap_position2}
    Tap With Positions    100    ${two_finger_tap}