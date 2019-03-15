*** Settings *** 
# Libraries 
Resource                  ../Settings/Libraries.robot
Resource                  ../Settings/Excel_Adaptor.robot
# PAGE OBJECTS
Resource                  ../Action/HomePage.robot
Resource                  ../Action/ProductPage.robot
Resource                  ../Action/CheckoutPage.robot
Resource                  ../Action/OrderShippingBillingViewPage.robot

*** Test Cases ***
[Test Setup]  Convert Data From File 

Search Product and Add to bag as a guest
    [Tags]		 prod    
    Log To Console  'Searching Product and Add to bag as a guest...'
    User Navigates To Homepage
    User Inputs Query into Search
    User Clicks on Search Button
    User Closes The KMail Pop-up
    Select a Product
    User Selects Quantity
    User Adds product to the cart
    Guest User Proceeds to Checkout
    Guest User Types First Name
    Guest User Types Last Name
    Guest User Input Email
    Guest User Verifies Order Summary

[Test Teardown]
    sleep  2s
    Close All Browsers 