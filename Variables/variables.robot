*** Variables ***
${BROWSER}                 Chrome
${GREEN_KART_URL}          https://rahulshettyacademy.com/seleniumPractise/#/
${PRODUCTS}                class:products
${SEARCH_INPUT}            class:search-keyword
${SEARCH_ICON}             class:search-button
${SEARCHED_ITEM}           Carrot
${CARROT_PRODUCT}          xpath://h4[@class='product-name' and contains(text(),'Carrot')]
${PLUS_ICON}               xpath://h4[@class='product-name' and contains(text(),'Carrot')]//following-sibling::div[@class='stepper-input']/a[@class='increment']
${ADD_TO_CART_BUTTON}      xpath://h4[@class='product-name' and contains(text(),'Carrot')]//following-sibling::div[@class='product-action']/button
${PRODUCT_PRICE}           xpath://h4[@class='product-name' and contains(text(),'Carrot')]//following-sibling::p[@class='product-price']
${PRODUCT_QUANTITY}        xpath://h4[@class='product-name' and contains(text(),'Carrot')]/following-sibling::div//input[@class='quantity']
${CART_ICON}               class:cart-icon
${CHECKOUT_BUTTON}         xpath://div[@class='cart-preview active']//button[text()='PROCEED TO CHECKOUT']
${PROCEED_PRODUCT_NAME}    class:product-name
${PROCEED_PRODUCT_QNT}     class:quantity
${PROCEED_PRODUCT_PRICE}   xpath://td[4]/p[@class='amount']
${PROCEED_PRODUCT_TPRICE}  xpath://td[5]/p[@class='amount']
${PLACE_ORDER}             xpath://button[text()='Place Order']
${SELECT_PATH}             xpath://div[@class='wrapperTwo']//select
${TOC_CHECKBOX}            class:chkAgree
${PROCEED_BUTTON}          xpath://div[@class='wrapperTwo']//button[contains(text(),'Proceed')]