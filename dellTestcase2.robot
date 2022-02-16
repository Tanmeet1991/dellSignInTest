*** Settings ***
Documentation    This file will test dell.com SignIn page, whether it ie getting 
...              valid desired content or not.
'''              Also this Test will check all the invalid case of SignIn.
...             
Library    SeleniumLibrary
Library    DataDriver    file=../Dellresources/loginDetails.xlsx
Resource    ../Dellresources/invalidResource.robot
Test Template    invalid login 


*** Test Cases ***
possible invalid signIn 
    [Documentation]    This test will check all the possible invalid login situations.
    [Tags]    Sanity
    signIn with user ${useremail} and password ${password}  dell@dell.com    S@#5767n  




*** Keywords ***
invalid login
    [Arguments]    ${useremail}    ${password}
    click to signIn
    signIn button
    fill the email    ${useremail}
    fill the password    ${password}
    Sleep    10
    click on signIn
    text should be visible
