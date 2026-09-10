*** Settings ***
Documentation    One test should pass. One test should fail on purpose.

*** Test Cases ***
The word cat is cat
    Should Be Equal    cat    cat

Apple is the same as orange
    [Documentation]    This test is supposed to fail. Apple is not orange.
    Should Be Equal    apple    orange
