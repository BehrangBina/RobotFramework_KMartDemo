*** Settings ***
Resource                  ../Settings/Libraries.robot
Resource                  ../Locators/webelements.robot



*** Keywords ***
User Navigates To Homepage
    Open Browser  about:blank  chrome
    Maximize Browser Window
    Go To   ${URL}
User Inputs Query into Search
    Input Text      ${txt_search}       ${SEARCH_QUERY}
User Clicks on Search Button
    Click Element   ${btn_search}
User Closes The KMail Pop-up
    ${showed}   Is Element Visible  ${btn_kmail_close}     
    Run Keyword If  ${showed}  Click Element  ${btn_kmail_close}
    Capture Page Screenshot   searched_product.png
Select a Product
    ${pruductXpath}     Catenate  //*[@class="title" and text()='${PRODUCT_NAME}']
    ${msg}              Catenate  Product Xpath:  ${pruductXpath}
    Log  ${msg}
    Log To Console  ${msg}    
    Scroll Element Into View    ${productGrid} 
    Click Element       xpath=${pruductXpath}
    Sleep  1s
    Capture Page Screenshot        Selected_Product.png

Click on Kids menu
    Click Element   id=topCatClass_kids