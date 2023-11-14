*** Settings ***
Resource           ../tests/common.resource
Suite Setup        common.Suite Setup
Suite Teardown     common.Suite Teardown
Test Setup         common.Launch App With Geo
Test Teardown      common.Close App


*** Tasks ***
Switch Stories Slides By Tap
    [Documentation]    Переключаем слайды в сторис тапами - влево и вправо

    Wait Until Page Contains Element    ru.afisha.android:id/itemStoryImage
    Click Element    ru.afisha.android:id/itemStoryImage

    Wait Until Page Contains Element    ru.afisha.android:id/fragStoriesIv

    Switch Slide By Tap    "right"
    Wait Until Page Contains Element    ru.afisha.android:id/fragStoriesContentWidgetSecondaryBtn

    Switch Slide By Tap    "left"
    Wait Until Page Contains Element    ru.afisha.android:id/fragStoriesTitleWidgetTv

Check Viewed Story
    [Documentation]    Проверяем, что сторис помечается просмотренной и не отображается на экране после обновления страницы

    Find Last Slide
    Go Back And Refresh View


*** Keywords ***
Find Last Slide
    [Documentation]    Найти последний слайд сторис

    Wait Until Page Contains Element    ru.afisha.android:id/itemStoryImage
    Click Element    ru.afisha.android:id/itemStoryImage
    Wait Until Page Contains Element    ru.afisha.android:id/fragStoriesIv

    FOR  ${i}  IN RANGE    15
        ${is_element_present}=    Run Keyword And Return Status    
        ...    Wait Until Element Is Visible    ru.afisha.android:id/fragStoriesTitleWidgetBtn    timeout=1s

        IF     ${is_element_present}    BREAK
        Switch Slide By Tap    "right"
    END
    Page Should Contain Element    ru.afisha.android:id/fragStoriesTitleWidgetBtn

Switch Slide By Tap
    [Documentation]     Переключение слайда сторис тапом
    ...    аргументы: side - сторона нажатия (left или right) 
    [Arguments]    ${side}

    # Определение разрешения экрана
    ${width}=    Get Window Width
    ${height}=    Get Window Height

    # В зависимости от стороны нажатия назначаем позицию клика по иксу
    IF  ${side}=="right"
        ${x}=    Evaluate     ${width} * 0.8
    ELSE IF    ${side}=="left"
        ${x}=    Evaluate     ${width} * 0.2
    END

    # Назначаем игрек, передаем координаты в список и нажимаем по ним
    ${y}=    Evaluate    ${height} * 0.5
    ${tap_position}=    Create List    ${x}    ${y}
    Tap With Positions    100    ${tap_position}

Go Back And Refresh View
    [Documentation]    Вернуться и обновить экран

    Press Keycode    4
    Page Should Contain Element    ru.afisha.android:id/itemStoryViewedMark

    ${stories_text}=    Get Element Attribute    ru.afisha.android:id/itemStoryTitle    attribute=text

    Terminate Application    ${APP_PACKAGE}
    Activate Application    ${APP_PACKAGE}

    Wait Until Element Is Visible    ru.afisha.android:id/itemStoryImage
    Page Should Not Contain Element    ru.afisha.android:id/itemStoryViewedMark
    Page Should Not Contain Text    ${stories_text}