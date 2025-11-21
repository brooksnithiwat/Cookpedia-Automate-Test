*** Settings ***
Resource    elements_locator.robot

*** Keywords ***
Open Browser 
    [Arguments]    ${base_url}
    [Documentation]    Open the browser at base URL
    New Browser    headless=false    browser=chromium
    New Page    ${base_url}
    

Register
    [Arguments]    ${username}    ${password}    ${email}
    [Documentation]    Fill username, password, email and submit registration
    Wait For Elements State    ${SIGNUP_BUTTON}    state=visible    timeout=10s
    Click    ${SIGNUP_BUTTON}
    Wait For Elements State    ${USERNAME_INPUT}    state=visible    timeout=10s
    Fill Text    ${USERNAME_INPUT}    ${username}
    Fill Text    ${PASSWORD_INPUT}    ${password}        
    Fill Text    ${EMAIL_INPUT}       ${email}
    Click    ${REGISTER_BUTTON}
    Wait For Elements State    ${REGISTERED_SUCCESS_MESSAGE}    state=visible    timeout=10s
    Sleep    5s

Login
    [Arguments]    ${username}    ${password}
    [Documentation]    Fill username, password and click login
    Click    ${LOGIN_BUTTON}
    Wait For Elements State     ${USERNAME_INPUT}    state=visible    timeout=10s
    Fill Text    ${USERNAME_INPUT}    ${username}
    Fill Text    ${PASSWORD_INPUT}    ${password}
    Click    ${LOGIN_CONFIRM_BUTTON}
    Sleep    5s
    

Search Recipe
    [Arguments]    ${recipe_name}
    [Documentation]    Fill username, password and click login

    Fill Text     ${SEARCH_INPUT}    ${recipe_name}
    Press Keys    ${SEARCH_INPUT}    Enter
    Sleep    5s

Edit Profile
    [Arguments]    ${firstname}    ${lastname}    ${phone}     ${aboutme}
    [Documentation]    Edit user profile with firstname, lastname, phone and aboutme
    Click     ${PROFILE_BUTTON}
    Click     ${EDIT_PROFILE_BUTTON}
    Wait For Elements State    ${FIRSTNAME_INPUT}    state=visible    timeout=10s
    Fill Text    ${FIRSTNAME_INPUT}    ${firstname}
    Fill Text    ${LASTNAME_INPUT}    ${lastname}
    Fill Text    ${PHONE_INPUT}    ${phone}
    Fill Text    ${ABOUTME_INPUT}    ${aboutme}
    Click    ${SUBMIT_BUTTON}
    Sleep    2s
    Click     ${PROFILE_BUTTON}
    Sleep    5s
Post Recipe
    [Arguments]    ${menu_name}    ${menu_description}    ${ingredients_detail}    ${instructions}
    [Documentation]    Post a new recipe with menu name, menu description, ingredients detail and instructions
    Click     ${POST_RECIPE_BUTTON} 
    Sleep    2s
    Click    ${PREVIEW_BUTTON}
    Sleep    2s