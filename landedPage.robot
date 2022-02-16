*** Settings ***
Documentation    This test will have all the details regarding signIn information and sigIn test for Dell support site.
Library    String
Library    OperatingSystem
Library    SeleniumLibrary


*** Variables ***
${signinElement}    xpath://span[text()='Sign In']
${otpElement}       xpath://strong[text()='Email me a one-time passcode']
${signIn}           xpath://div[@class='mh-myaccount-ctas']//child::a[1]
${apex}             xpath://span[text()='APEX']
${viewApex}         xpath://a[text()='View All APEX']
${products}         xpath://span[text()='Products']
${laptops}          xpath://a[text()='Laptops']//parent::li
${soultions}        xpath://span[text()='Solutions']
${viewSolutions}    xpath://a[text()='View All Solutions']
${support}          xpath://span[text()='Support']
${support_home}     xpath://li[@class='menu-list-item']//child::a[text()='Support Home']
${deals}            xpath://span[text()='Deals']
${laptopDeals}      xpath://a[text()='Laptop Deals']
${findaStore}       css:a.mh-top-nav-button.mh-top-nav-no-child
${aboutUs}          xpath://span[text()='About Us']
${whatWeDo}         xpath://ul[@aria-label='What We Do']//child::li[text()='What We Do']
${services}         xpath://span[text()='Services']
${viewServices}     xpath://a[text()='View All Services']
${close}            css:a.geoform_popup_close
${resellertext}     Dell Reseller Stores
${inputEmail}       xpath://input[@id='EmailAddress']
${inputPassword}    xpath://input[@id='Password']
${signInButton}     xpath://button[@id='sign-in-button']



*** Keywords ***
wait for signIn option visible
    [Arguments]    ${element}
    Element Should Be Visible    ${element}

fill in the signIn information and signIn
    Click Element    ${signinElement}
    Sleep    2
    Click Element    ${signIn}
    Sleep    2
    Element Should Be Visible    ${otpElement}
    ${emails}=    Get File    D:\\framerobot\\Mytestcases\\Dellresources\\email.txt
    @{lines}=    Split To Lines    ${emails}
    FOR    ${email}    IN    @{lines}
        ${valueEmail}=    Get Variable Value    ${email}
        Log To Console    ${valueEmail}
        Input Text    xpath://input[@id='EmailAddress']    ${valueEmail}
        
    END
    Sleep    2
    ${passwords}=    Get File    D:\\framerobot\\Mytestcases\\Dellresources\\password.txt
    @{lines}=    Split To Lines    ${passwords}
    FOR    ${password}    IN    @{lines}
        ${valuePassword}=    Get Variable Value    ${password}
        Log to Console    ${valuePassword}
        Input Password    ${inputPassword}    ${valuePassword}
        
    END
    Sleep    10
    Click Button    ${signInButton}
    Sleep    3
    Element Should Be Visible    xpath://span[text()='Tanmeet']

click on APEX
    Click Element    ${apex}
    Sleep    1
    Page Should Contain Element    ${viewApex}

click on Products
    Click Element    ${products}
    Sleep    1
    Page Should Contain Element    ${laptops}

click on Solutions
    Click Element    ${soultions}
    Sleep    1
    Page Should Contain Element    ${viewSolutions}

click on Services
    Click Element    ${services}
    Sleep    1
    Page Should Contain Element    ${viewServices}

click on Support
    Click Element    ${support}
    Sleep    1
    Page Should Contain Element    ${support_home}

click on Deals
    Click Element    ${deals}
    Sleep    1
    Page Should Contain Element    ${laptopDeals}

click on about us
    Click Element    ${aboutUs}
    Sleep    1
    Page Should Contain Element    ${whatWeDo}

click on Find a Store
    Click Link    ${findaStore}
    Sleep    3   
    Click Element    ${close}
    Sleep    5
    Page Should Contain    ${resellertext} 

