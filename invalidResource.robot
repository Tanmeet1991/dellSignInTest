*** Settings ***
Documentation    This resource file will contain all the invalid signIn details 

Library    SeleniumLibrary
Resource    ../Dellresources/landedPage.robot





*** Keywords ***
click to signIn
    Click Element    ${signinElement}

signIn button
    Click Element    ${signIn}
    Sleep    3

fill the email
    [Arguments]    ${useremail}   
    input Text    xpath://input[@id='EmailAddress']    ${useremail} 
fill the password
    [Arguments]    ${password}
    Input Password    xpath://input[@id='Password']    ${password}
click on signIn
    Click Element    xpath://button[@id='sign-in-button']
    Sleep    2
text should be visible
    Page Should Contain    We are unable to match the details you entered with our records


    
   