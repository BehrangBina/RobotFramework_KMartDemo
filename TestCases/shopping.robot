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
Search Product and Add to bag as a guest
    Convert Data From File 
    Log To Console  'Searching Product and Add to bag as a guest...'
    User Navigates To Homepage
    User Inputs Query into Search
    User Clicks on Search Button
    User Clsoes The KMail Pop-up
    Select a Product
    User Selects Quanity
    User Adds product to the cart
    Guest User Proceeds to Checkout
    Guest User Types First Name
    Guest User Tpes Last Name
    Guest USer Input Email
    Guest User Verifies Order Summary


    Sleep  2s
    #Close Browser