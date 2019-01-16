*** Settings ***
Resource                  ../Settings/Libraries.robot
Resource                  ../Locators/webelements.robot

*** Keywords ***
Guest User Types First Name
    Input Text   ${txt_firstname}   ${FIRST_NAME}
Guest User Types Last Name
    Input Text   ${txt_lastname}   ${LAST_NAME}
Guest User Input Email
    Input Text   ${txt_email}   ${EMAIL}

Guest User Verifies Order Summary
    Scroll Element Into View   ${orderSummary}  
    Capture Page Screenshot   orderSummary.png 