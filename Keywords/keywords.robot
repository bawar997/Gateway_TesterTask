*** Settings ***
Resource    ../Settings/settings.robot

*** Keywords ***
Open Browser And Set Green KArt Website Url
    Open Browser    ${GREEN_KART_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${PRODUCTS}

Search For An Item
    Input Text    ${SEARCH_INPUT}    ${SEARCHED_ITEM}

Click On The Search Icon
    Click Button    ${SEARCH_ICON}

Add Five Of The Item
    FOR    ${iterator}    IN RANGE    1    5
        Click Element    ${PLUS_ICON}
    END

CLick Add To Cart
    Click Button    ${ADD_TO_CART_BUTTON}

Get Product Detail On Table
    ${get_product_quantity}    Get Element Attribute    ${PRODUCT_QUANTITY}    Value
    ${get_product_name}        Get Text                 ${CARROT_PRODUCT}
    ${get_product_price}       Get Text                 ${PRODUCT_PRICE}
    ${product_total_price}     Evaluate    ${get_product_price} * ${get_product_quantity}
    ${product_total_price}     Convert To String    ${product_total_price}
    @{table_product_detail}    Create List    ${get_product_name}    ${get_product_quantity}    ${get_product_price}    ${product_total_price}
    Set Test Variable       @{table_product_detail}

Get Product Detail On Proceed table
    Wait Until Element Is Visible    ${PLACE_ORDER}
    ${get_product_quantity}      Get Text    ${PROCEED_PRODUCT_QNT}
    ${get_product_name}          Get Text    ${PROCEED_PRODUCT_NAME}
    ${get_product_price}         Get Text    ${PROCEED_PRODUCT_PRICE}
    ${get_product_tprice}        Get Text    ${PROCEED_PRODUCT_TPRICE}
    @{proceed_product_detail}    Create List    ${get_product_name}    ${get_product_quantity}    ${get_product_price}    ${get_product_tprice}
    Set Test Variable       @{proceed_product_detail}

Verify Product Detail On Table And On Proceed table
    Lists Should Be Equal    ${table_product_detail}    ${proceed_product_detail}

Click On Cart Icon
    Click Element    ${CART_ICON}

Click Checkout Button
    Click Element    ${CHECKOUT_BUTTON}git init

Click Element At Place Order Button
    Wait Until Element Is Visible    ${PLACE_ORDER}
    Click Element    ${PLACE_ORDER}

Select Country
    Wait Until Element Is Visible    ${SELECT_PATH}
    Select From List By Value    ${SELECT_PATH}    Iraq

Click On Term Of Condition
    Click Element    ${TOC_CHECKBOX}

Click On The Proceed Button
    Click Button    ${PROCEED_BUTTON}

Verify Success Message
    Page Should Contain    Thank you, your order has been placed successfully