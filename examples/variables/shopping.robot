*** Settings ***
Documentation    The same values are reused through variables.

*** Variables ***
${CUSTOMER}       Sam
${ITEM}           notebook
${PRICE}          5

*** Test Cases ***
Customer buys an item
    Log    ${CUSTOMER} wants a ${ITEM}
    Item name is not empty
    Price is five

*** Keywords ***
Item name is not empty
    Should Not Be Empty    ${ITEM}

Price is five
    Should Be Equal As Integers    ${PRICE}    5
