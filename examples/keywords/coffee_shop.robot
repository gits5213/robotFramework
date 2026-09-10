*** Settings ***
Documentation    A tiny story that uses keywords we named ourselves.

*** Test Cases ***
Customer orders coffee
    Greet the customer
    Take the order    latte
    Confirm the drink    latte

*** Keywords ***
Greet the customer
    Log    Welcome to the coffee shop!

Take the order
    [Arguments]    ${drink}
    Log    Customer asked for a ${drink}

Confirm the drink
    [Arguments]    ${drink}
    Should Not Be Empty    ${drink}
    Log    Order confirmed: ${drink}
