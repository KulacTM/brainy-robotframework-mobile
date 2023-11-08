*** Settings ***
Resource    ../core/all.resource
Resource    Onboarding/onboarding.resource


*** Keywords ***
Launch App
    [Documentation]    Просто запустить приложение

    launcher.Open App

Launch App With Geo
    [Documentation]    Запустить приложение с геолокацией

    Launch App
    onboarding.Allow Location And Confirm Town

Close App
    [Documentation]    Закрыть приложение

    Close Application

Suite Setup
    [Documentation]    Действия перед запуском тест-сьюита

    Set Appium Timeout    20s

Suite Teardown
    [Documentation]    Действия после окончания тест-сьюита

    Pass Execution    message=Прогон завершен