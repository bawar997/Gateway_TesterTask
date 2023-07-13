*** Settings ***
Resource    ../Settings/settings.robot
Suite Setup       Open Browser And Set Green KArt Website Url
Suite Teardown    Close Browser

*** Test Cases ***
Adding Item To Cart And Verifying
    Search For An Item
    Click On The Search Icon
    Add Five Of The Item
    CLick Add To Cart
    Get Product Detail On Table
    Click On Cart Icon
    Click Checkout Button
    Get Product Detail On Proceed table
    Verify Product Detail On Table And On Proceed table
    Click Element At Place Order Button
    Select Country
    Click On Term Of Condition
    Click On The Proceed Button
    Verify Success Message
