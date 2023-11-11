*** Settings ***
Resource           ../tests/common.resource
Suite Setup        common.Suite Setup
Suite Teardown     common.Suite Teardown
Test Setup         common.Launch App With Geo
Test Teardown      common.Close App


*** Tasks ***
Introduction to Scroll
    [Documentation]    Скролл от блока сторис до кнопки "Избранное" в фичере
    ...    Scroll Up, Scroll Down, Scroll Element Into View не работают с UiAutomator2 

    Wait Until Page Contains Element    ru.afisha.android:id/itemTileEventIv
    Scroll    ru.afisha.android:id/itemTileFavoriteBtn    ru.afisha.android:id/storiesRv

Introduction to Swipe
    [Documentation]     Свайп с указанием конкретных пикселей для нажатия роботом

    Wait Until Page Contains Element    ru.afisha.android:id/itemTileEventIv
    Swipe    900    1300    100    1300    500
    Sleep    3s

Introduction To Swipe By Percent
    [Documentation]    Свайп с указанием процента от максимального разрешения экрана

    Wait Until Page Contains Element    ru.afisha.android:id/itemTileEventIv
    Swipe By Percent   80    50    20    50    500
    Sleep    3s
