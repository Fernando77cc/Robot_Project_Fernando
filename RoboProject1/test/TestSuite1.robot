*** Settings ***
Library    SeleniumLibrary
Suite Setup        Log    I am inside TEst Suite Setup    
Suite Teardown     Log    I am inside Test Suite Teardown
Test Setup         Log    I am inside Test Setup
Test Teardown      Log    I am inside Test Teardown        

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World ...    

MySecondTest
    [Tags]    example
    Log    i am inside the 2nd test    
    Set Tags    regression1
    Remove Tags    regression1    

MyThirdTest
    Log    i am inside the 3rd test    
    

MyFourthTest
    Log    i am inside the 4th test  
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome    
    # Click Button    id=L2AGLb    
    # Set Browser Implicit Wait    5
    # Sleep    2
    # Input Text      name=q                Fernando Tressi
    # Press Keys      name=q    ENTER
    # #Click Button    name=btnK
    # Sleep    4    
    # Close Browser
    # Log    Test Completed
    

# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser       ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element      id=welcome    
    # Click Element      link=Logout
    # Close Browser
    # Log                Test completed  
    # Log                This test was completed by %{username} on %{os}    

*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/    
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    useradmin=Admin    password=admin123
    
*** Keywords ***
LoginKW
    Input Text         id=txtUsername    @{CREDENTIALS}[0]
    Input Password     id=txtPassword    &{LOGINDATA}[password]  
    Click Button       id=btnLogin  