*** Settings ***
Resource                  ../Settings/Libraries.robot
Resource                  ../Locators/webelements.robot

*** Keywords ***
Guest User Proceeds to Checkout
    Capture Page Screenshot  Guest_Proceed2Checkout.png
    Click Element  ${btn_guestshopper_checkout}