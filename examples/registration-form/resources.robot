*** Settings ***
Documentation    Shared pieces for the live Registration Form tests.
...              Page: https://gitsuniversity.org/practice/registration-form/

Library          SeleniumLibrary

*** Variables ***
${FORM_URL}                          https://gitsuniversity.org/practice/registration-form/
${BROWSER}                           chrome

${FIRST_NAME_FIELD}                  id=registration-form-firstname-input
${LAST_NAME_FIELD}                   id=registration-form-lastname-input
${EMAIL_FIELD}                       id=registration-form-email-input
${PHONE_FIELD}                       id=registration-form-phone-input
${USERNAME_FIELD}                    id=registration-form-username-input
${PASSWORD_FIELD}                    id=registration-form-password-input
${CONFIRM_PASSWORD_FIELD}            id=registration-form-confirmpassword-input
${GENDER_DROPDOWN}                   id=registration-form-gender-select
${DATE_OF_BIRTH_FIELD}               id=registration-form-dateofbirth-input
${COUNTRY_DROPDOWN}                  id=registration-form-country-select
${TERMS_CHECKBOX}                    id=registration-form-terms-checkbox
${REGISTER_BUTTON}                   id=registration-form-submit-button

${FIRST_NAME_ERROR}                  id=registration-form-firstname-error
${LAST_NAME_ERROR}                   id=registration-form-lastname-error
${EMAIL_ERROR}                       id=registration-form-email-error
${PHONE_ERROR}                       id=registration-form-phone-error
${USERNAME_ERROR}                    id=registration-form-username-error
${PASSWORD_ERROR}                    id=registration-form-password-error
${CONFIRM_PASSWORD_ERROR}            id=registration-form-confirmpassword-error
${GENDER_ERROR}                      id=registration-form-gender-error
${DATE_OF_BIRTH_ERROR}               id=registration-form-dateofbirth-error
${COUNTRY_ERROR}                     id=registration-form-country-error
${TERMS_ERROR}                       id=registration-form-terms-error

${SUCCESS_TITLE}                     id=registration-form-success-title
${SUCCESS_EMAIL}                     id=registration-form-success-email
${REGISTER_ANOTHER_BUTTON}           id=registration-form-register-another-button

${VALID_FIRST_NAME}                  John
${VALID_LAST_NAME}                   Doe
${VALID_EMAIL}                       john.doe@example.com
${VALID_PHONE}                       1234567890
${VALID_USERNAME}                    johndoe
${VALID_PASSWORD}                    Practice1
${VALID_GENDER}                      Male
${VALID_DATE_OF_BIRTH}               1990-01-15
${VALID_COUNTRY}                     United States

*** Keywords ***
Open The Registration Form
    [Documentation]    Opens Chrome and goes to the live practice page.
    Open Browser    ${FORM_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Registration Form    15s
    Turn Off The Browser Pop-up Checks

Go Back To A Fresh Form
    [Documentation]    Reloads the form so each test starts clean.
    Go To    ${FORM_URL}
    Wait Until Page Contains    Registration Form    15s
    Turn Off The Browser Pop-up Checks

Turn Off The Browser Pop-up Checks
    [Documentation]    Lets the page's own error messages show, instead of the browser tooltip.
    Execute Javascript    document.getElementById('registration-form').setAttribute('novalidate', 'novalidate')

Fill The Valid Registration Form
    [Documentation]    Types a complete, valid example person into the form.
    Wait Until Element Is Visible  ${FIRST_NAME_FIELD}    10s
    Input Text                 ${FIRST_NAME_FIELD}         ${VALID_FIRST_NAME}
    Input Text                 ${LAST_NAME_FIELD}          ${VALID_LAST_NAME}
    Input Text                 ${EMAIL_FIELD}              ${VALID_EMAIL}
    Input Text                 ${PHONE_FIELD}              ${VALID_PHONE}
    Input Text                 ${USERNAME_FIELD}           ${VALID_USERNAME}
    Input Password             ${PASSWORD_FIELD}           ${VALID_PASSWORD}
    Input Password             ${CONFIRM_PASSWORD_FIELD}   ${VALID_PASSWORD}
    Select From List By Label  ${GENDER_DROPDOWN}          ${VALID_GENDER}
    Input Text                 ${DATE_OF_BIRTH_FIELD}      ${VALID_DATE_OF_BIRTH}
    Select From List By Label  ${COUNTRY_DROPDOWN}         ${VALID_COUNTRY}
    Scroll Element Into View   ${TERMS_CHECKBOX}
    Select Checkbox            ${TERMS_CHECKBOX}

Click Register
    [Documentation]    Scrolls to Register and clicks it. A banner on the page can cover the button, so this uses the page's own click.
    Scroll Element Into View    ${REGISTER_BUTTON}
    Execute Javascript    document.getElementById('registration-form-submit-button').click()

Click Register Another Account
    [Documentation]    On the success page, starts a new form.
    Wait Until Page Contains Element    ${REGISTER_ANOTHER_BUTTON}    10s
    Scroll Element Into View            ${REGISTER_ANOTHER_BUTTON}
    Execute Javascript                  document.getElementById('registration-form-register-another-button').click()
