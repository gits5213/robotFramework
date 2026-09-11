*** Settings ***
Documentation    Live tests for the GITS Registration Form practice page.
...              https://gitsuniversity.org/practice/registration-form/
...
...              These tests open a real browser. Watch the window while they run.

Resource         resources.robot

Suite Setup      Open The Registration Form
Suite Teardown   Close Browser
Test Setup       Go Back To A Fresh Form

*** Test Cases ***
The registration form page loads
    [Documentation]    The live page shows its title and the Register button.
    ${page_title}=                  Get Title
    Should Contain                  ${page_title}    GLOBAL I TECH SOLUTIONS
    Page Should Contain             Registration Form
    Page Should Contain             All fields are required.
    Page Should Contain Element     ${FIRST_NAME_FIELD}
    Page Should Contain Element     ${REGISTER_BUTTON}

Empty form shows required field errors
    [Documentation]    Clicking Register with nothing filled in should warn about every required field.
    Click Register
    Element Should Contain    ${FIRST_NAME_ERROR}        First name is required
    Element Should Contain    ${LAST_NAME_ERROR}         Last name is required
    Element Should Contain    ${EMAIL_ERROR}             Email is required
    Element Should Contain    ${PHONE_ERROR}             Phone number is required
    Element Should Contain    ${USERNAME_ERROR}          Username is required
    Element Should Contain    ${PASSWORD_ERROR}          Password is required
    Element Should Contain    ${GENDER_ERROR}            Gender is required
    Element Should Contain    ${DATE_OF_BIRTH_ERROR}     Date of birth is required
    Element Should Contain    ${COUNTRY_ERROR}           Country is required
    Element Should Contain    ${TERMS_ERROR}             You must accept the terms and conditions
    Page Should Not Contain          Registration Successful

Invalid email shows a format error
    [Documentation]    An email without @ should not be accepted.
    Fill The Valid Registration Form
    Input Text                ${EMAIL_FIELD}     invalid-email
    Click Register
    Element Should Contain    ${EMAIL_ERROR}     Invalid email format
    Page Should Not Contain   Registration Successful

Short username shows a length error
    [Documentation]    Username must be at least 5 characters.
    Fill The Valid Registration Form
    Input Text                ${USERNAME_FIELD}     ab
    Click Register
    Element Should Contain    ${USERNAME_ERROR}     Username must be at least 5 characters

Short password shows a length error
    [Documentation]    Password must be at least 8 characters.
    Fill The Valid Registration Form
    Input Password            ${PASSWORD_FIELD}            123
    Input Password            ${CONFIRM_PASSWORD_FIELD}    123
    Click Register
    Element Should Contain    ${PASSWORD_ERROR}            Password must be at least 8 characters

Mismatched passwords show an error
    [Documentation]    Confirm Password must match Password.
    Fill The Valid Registration Form
    Input Password            ${PASSWORD_FIELD}            Practice1
    Input Password            ${CONFIRM_PASSWORD_FIELD}    Practice2
    Click Register
    Element Should Contain    ${CONFIRM_PASSWORD_ERROR}    Passwords do not match

Invalid phone number shows an error
    [Documentation]    Phone must be 10 digits. Letters are not allowed.
    Fill The Valid Registration Form
    Input Text                ${PHONE_FIELD}     123
    Click Register
    Element Should Contain    ${PHONE_ERROR}     Invalid phone number

Successful registration with valid data
    [Documentation]    A complete valid form should show the success page.
    Fill The Valid Registration Form
    Click Register
    Wait Until Page Contains Element    ${SUCCESS_TITLE}    10s
    Element Should Contain              ${SUCCESS_TITLE}    Registration Successful
    Element Should Contain              ${SUCCESS_EMAIL}    ${VALID_EMAIL}
    Page Should Contain                 ${VALID_FIRST_NAME}
    Page Should Contain                 ${VALID_LAST_NAME}
    Page Should Contain                 ${VALID_USERNAME}
    Page Should Contain Element         ${REGISTER_ANOTHER_BUTTON}

Register another account returns to the form
    [Documentation]    After a success, the student can start a new registration.
    Fill The Valid Registration Form
    Click Register
    Wait Until Page Contains Element    ${REGISTER_ANOTHER_BUTTON}    10s
    Click Register Another Account
    Wait Until Page Contains Element    ${REGISTER_BUTTON}            10s
    Page Should Contain                 Registration Form
    Page Should Contain Element         ${FIRST_NAME_FIELD}
