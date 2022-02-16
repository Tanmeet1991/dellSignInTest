*** Settings ***
Documentation    This file will test Support.dell.com Support home page, whether it ie getting 
...              valid information about capturing the tag or not.
...              We will test signin option working or not and we will check if website support home page
...              is showing the desired content or not.
Library    SeleniumLibrary
Resource    ../Dellresources/genericDell.robot
Resource    ../Dellresources/landedPage.robot
Resource    ../Dellresources/ItemList.robot
Test Setup    Open_the_browser_with_Support.dell.com_page
Test Teardown    Close All Browsers



*** Test Cases ***
Dell_Valid_SignIn_Test
    [Documentation]    This Test will only test the signIn function
    [Tags]    Function
    landedPage.wait for signIn option visible    ${signinElement}
    Sleep    2
    landedPage.fill in the signIn information and signIn


menuList_test 
    [Documentation]    This test will check the menuList, if it is getting clicked or not
    [Tags]    Sanity
    landedPage.click on APEX
    landedPage.click on Products
    landedPage.click on Solutions
    landedPage.click on Services
    landedPage.click on Support
    landedpage.click on Deals
    landedPage.click on about us
    landedPage.click on Find a Store








    
    