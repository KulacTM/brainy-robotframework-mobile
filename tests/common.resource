*** Settings ***
Resource    ../core/all.resource


*** Keywords ***
Launch App
    [Documentation]    Просто запустить приложение

    launcher.Open App

Close App
    [Documentation]    Закрыть приложение

    Close Application

Suite Setup
    [Documentation]    Действия перед запуском тест-сьюита

    Set Appium Timeout    20s

Suite Teardown
    [Documentation]    Действия после окончания тест-сьюита

    Pass Execution    message=Прогон завершен