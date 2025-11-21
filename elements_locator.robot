*** Variables ***

# URL VARIABLES
${FRONTEND_URL}           https://soften-front.vercel.app/


# ELEMENT LOCATORS
${LOGIN_BUTTON}      xpath=/html/body/header/nav/div/div[1]/div[2]/div/a[1]/span
${SIGNUP_BUTTON}      text=Sign Up
${USERNAME_INPUT}     text=Username
${PASSWORD_INPUT}     text=Password
${EMAIL_INPUT}        css=#email
${REGISTER_BUTTON}    text=Register
${LOGIN_CONFIRM_BUTTON}       css=button[type="submit"][class*="bg-yellow-400"]
${REGISTERED_SUCCESS_MESSAGE}     text=Registered! Please login.
${SEE_OUR_MENU}      text=See Our Menu
${SEARCH_INPUT}       xpath=/html/body/header/nav/div/div[1]/form/input
${PROFILE_BUTTON}    xpath=/html/body/header/nav/div/div[1]/div[2]/div/a/span
${EDIT_PROFILE_BUTTON}    xpath=/html/body/div[2]/div[1]/div/div[2]/div[1]/div[2]/button[1]/a
${FIRSTNAME_INPUT}    xpath=//input[@placeholder='Enter firstname']
${LASTNAME_INPUT}     xpath=//input[@placeholder='Enter lastname']
${PHONE_INPUT}        xpath=//input[@placeholder='Enter phone number']
${ABOUTME_INPUT}      xpath=//textarea[@placeholder='Write something about yourself...']
${SUBMIT_BUTTON}    text=submit
${VIEW_RECIPE_BUTTON}    xpath=/html/body/div[2]/div[2]/div/div/div[2]/a
${POST_RECIPE_BUTTON}    xpath=/html/body/div[3]/button

${MENU_NAME}           css=body > div:nth-child(5) > div > div > form > div:nth-child(2) > input
${MENU_DESCRIPTION}      /html/body/div[3]/div/div/form/div[2]/input 
${SPICY_TAG}    text=spicy
${INGREDIENTS_DETAIL_INPUT}    xpath=/html/body/div[3]/div/div/form/div[5]/div/input
${MAIN_INGREDIENTS_TAG}    xpath=/html/body/div[3]/div/div/form/div[6]/div[2]/button[1]
${ISTRUCTIONS_INPUT}    xpath=/html/body/div[3]/div/div/form/div[7]/div/textarea

${SHARE_BUTTON}     xpath=/html/body/div[3]/div/div/form/div[8]/button[2]
${PREVIEW_BUTTON}     xpath=/html/body/div[3]/div/div/div/div/button[1]/span
${FIVE_STAR_RATE}     xpath=/html/body/main/div[4]/div[2]/div/button[5]


${LEFT_ICON}      xpath=/html/body/header/nav/div/div[1]/div[1]/a

${FAVORITE_BUTTON}      xpath=/html/body/main/div[1]/div[1]/div/button

${SAVED_POST_BUTTON}      xpath=/html/body/div[2]/div[2]/div/div[1]/button[2]/span
${COMMENT_BOX}      xpath=//textarea[@placeholder="Write a comment..."]
${COMMENT_SUBMIT_BUTTON}      xpath=/html/body/main/div[5]/div[2]/form/button