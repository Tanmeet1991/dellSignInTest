*** Settings ***
Documentation    This file will contain all the required details such as URL and sigin user details to initiate the test.
Library    SeleniumLibrary
# Library    OperatingSystem
# Library    String
# Resource    ../Dellresources/userPassword.robot


*** Variables ***
${dellUrl}    https://www.dell.com/en-in


*** Keywords ***
Open_the_browser_with_Support.dell.com_page
    ${options}=    Evaluate    sys.modules["selenium.webdriver.chrome.options"].Options()    sys
    Call Method    ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go To    ${dellUrl}
    Maximize Browser Window
    Sleep    2

