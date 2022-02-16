*** Settings ***
Documentation    This resource file will contain list of items available on Dell.com.
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${listItem}            xpath://figure[@class='dds__m-0']//parent::div//child::div[@class='dds__body-2 dds__mt-2 hpg-cat-label']
${category}            xpath://div[@class='hpg-cat-links']//child::a[@class='dds__link--standalone']

*** Keywords ***
list of items available
    ${items}=    Get WebElements    ${listItem}
    FOR    ${element}    IN    @{items}
        Log    ${element.text}
        
    END
    Sleep    5

