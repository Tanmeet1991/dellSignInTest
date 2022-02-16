*** Settings ***
Documentation    This file will test Support.dell.com Support home page, whether it ie getting 
...              valid information about capturing the tag or not.
...              We will test signin option working or not and we will check if website support home page
...              is showing the desired content or not.
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