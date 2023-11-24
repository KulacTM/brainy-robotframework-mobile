*** Settings ***
Resource           ../tests/common.resource
Suite Setup        common.Suite Setup
Suite Teardown     common.Suite Teardown
Test Setup         common.Launch App With Geo
Test Teardown      common.Close App


*** Tasks ***
Scroll Until Element Is Found
    [Documentation]    Скроллим страницу, пока не найдем указанный элемент

    ${is_element_present}=    Set Variable    ${False}
    FOR  ${i}  IN RANGE    5
        ${is_element_present}=    Run Keyword And Return Status    
        ...    Wait Until Element Is Visible    //android.widget.TextView[@text="Нескоро в кино"]    timeout=0.5s
        IF  ${is_element_present}
            BREAK
        ELSE
            Swipe By Percent    50    80    50    20    500
        END
    END


For Loop

    @{fruits}=    Set Variable   Банан    Апельсин    Яблоко
    FOR  ${fruit}  IN  ${fruits}
        Log    ${fruit}
    END

While Loop

    ${is_element_present}=    Set Variable    ${False}
    WHILE  not ${is_element_present}
        ${is_element_present}=    Run Keyword And Return Status    
        ...    Wait Until Element Is Visible    //android.widget.TextView[@text="Скоро в кино"]    timeout=0.5s
        IF  ${is_element_present}
            BREAK
        ELSE
            Swipe By Percent    50    80    50    20    500
        END
    END