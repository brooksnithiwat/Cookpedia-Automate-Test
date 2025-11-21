# run all case : robot automate_test.robot


*** Settings ***
Library    Browser
Resource    elements_locator.robot
Resource    common_keywords.robot
Resource    data.robot


*** Test Cases ***
TC-001-Register User And Local Login
   [Documentation]    Register as a new user and login locally
   ...     robot --test "TC-001-Register User And Local Login" automate_test.robot
    Open Browser    ${FRONTEND_URL}
    Register    ${USERNAME}    ${PASSWORD}    ${EMAIL}
    Login           ${USERNAME}    ${PASSWORD}
    Close Browser

TC-002-Guest Search for Lemonade recipe
   [Documentation]    Guest searches for Lemonade recipe
   ...     robot --test "TC-002-Guest Search for Lemonade recipe" automate_test.robot
   Open Browser    ${FRONTEND_URL}
   Wait For Elements State     ${SEE_OUR_MENU}    state=visible    timeout=10s
   Click     ${SEE_OUR_MENU}
   Search Recipe    Lemonade  
   Click    ${VIEW_RECIPE_BUTTON}
   Sleep    5s  
   Close Browser

TC-003-Login and edit user profile
   [Documentation]    User Login and edit user profile
   ...     robot --test "TC-003-Login and edit user profile" automate_test.robot
   Open Browser    ${FRONTEND_URL}
   Wait For Elements State     ${SEE_OUR_MENU}    state=visible    timeout=10s
   Login           ${USERNAME}    ${PASSWORD}
   Edit Profile    Jane    Doe    1234567890    I love cooking!
   Close Browser

TC-004-Login and preview post
    [Documentation]    User Login and preview post 
      ...     robot --test "TC-004-Login and preview post" automate_test.robot
      Open Browser    ${FRONTEND_URL}
      Wait For Elements State     ${SEE_OUR_MENU}    state=visible    timeout=10s
      Login           ${USERNAME}    ${PASSWORD}
      Sleep    4s
      Post Recipe    Pad-Kraphao    A spicy Thai basil stir-fry dish.    Chicken, Basil, Chili, Garlic    1. Heat oil in a pan. 2. Add garlic and chili, stir-fry until fragrant. 3. Add chicken and cook until done. 4. Add basil leaves and stir-fry for another minute. 5. Serve with rice.
      Close Browser

TC-005-Login and rate Lemonade recipe
   [Documentation]    User Login and rate Lemonade recipe
   ...     robot --test "TC-005-Login and rate Lemonade recipe" automate_test.robot
   Open Browser    ${FRONTEND_URL}
   Wait For Elements State     ${SEE_OUR_MENU}    state=visible    timeout=10s
   Login           ${USERNAME}    ${PASSWORD}
   Search Recipe    Lemonade  
   Click    ${VIEW_RECIPE_BUTTON}
   Wait For Elements State    ${FIVE_STAR_RATE}    state=visible    timeout=10s
   Click    ${FIVE_STAR_RATE}
   Sleep    2s  
   Click    ${LEFT_ICON}
   Sleep    5s  
   Close Browser
      
TC-006-Login and save lemonade recipe to favorites
   [Documentation]    User Login and save lemonade recipe to favorites
   ...     robot --test "TC-006-Login and save lemonade recipe to favorites" automate_test.robot
   Open Browser    ${FRONTEND_URL}
   Wait For Elements State     ${SEE_OUR_MENU}    state=visible    timeout=10s
   Login           ${USERNAME}    ${PASSWORD}
   Search Recipe    Lemonade  
   Click    ${VIEW_RECIPE_BUTTON}
   Wait For Elements State    ${FAVORITE_BUTTON}    state=visible    timeout=10s
   Click    ${FAVORITE_BUTTON}
   Sleep    2s  
   Click    ${PROFILE_BUTTON}
   Sleep    2s  
   Click    ${SAVED_POST_BUTTON}
   Sleep    4s  
   Close Browser

TC-007-Login and comment on lemonade recipe
   [Documentation]    User Login and comment on lemonade recipe
   ...     robot --test "TC-007-Login and comment on lemonade recipe" automate_test.robot
   Open Browser    ${FRONTEND_URL}
   Wait For Elements State     ${SEE_OUR_MENU}    state=visible    timeout=10s
   Login           ${USERNAME}    ${PASSWORD}
   Search Recipe    Lemonade  
   Click    ${VIEW_RECIPE_BUTTON}
   Wait For Elements State    ${COMMENT_BOX}    state=visible    timeout=10s
   Fill Text    ${COMMENT_BOX}    This lemonade recipe is fantastic! Refreshing and easy to make.
   Click    ${COMMENT_SUBMIT_BUTTON}
   Sleep    5s  
   Close Browser