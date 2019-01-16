*** Settings ***
Resource                  ../Settings/Libraries.robot
Resource                  ../Locators/webelements.robot



*** Keywords ***
User Selects Quantity
    Click Element   ${quantity_dropdown} 
    # (//ul/li[contains(@class, '_msddli_')]/span)[ ]
    ${quantity}             Convert To Integer   ${QUANTITY}
    ${quantityXpath}       Catenate  (//ul/li[contains(@class, '_msddli_')]/span)[${quantity}]
    ${msg}              Catenate  Quantity Xpath:  ${quantityXpath}
    Log  ${msg}
    Click Element  xpath=${quantityXpath}
    Capture Page Screenshot   Quantity_Of_Product.png
User Adds product to the cart
    Click Element  ${btn_add2cart}
    ${numberOfProductsInBag}    Get Text  ${shoppingBagItemCount} 
    Log To Console     '${numberOfProductsInBag}'product in the bag
    log  '${numberOfProductsInBag}'product in the bag
    Capture Page Screenshot  shopping_bag_popup.png
    Click Element  ${btn_checkout_popup}