*** Settings ***
Library    SeleniumLibrary   
Suite Setup    Log   I'm inside testsuite setup
*** Test Cases ***
MyFirstTest
    Log    Hello World.    
    
FirstSeleniumTest
    Open Browser    https://www.google.com/    chrome
    Close Browser
    
SampleLoginTest
    [Documentation]    This is the sample loginTest.
    Open Browser      ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    LoginKW 
    Click Element     id=welcome    
    Click Element     link=Logout
    Close Browser
    Log               Test completed      
    Log    This test was executed by %{username} on %{os}    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CRED}    Admin    admin123
&{CRED1}    password=admin123
@{CRED2}    Admin    admin1234
*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CRED}[0]        
    Input Password    id=txtPassword    &{CRED1}[password]
    Click Button      id=btnLogin
    

#C:
#cd C:\Users\mishal\.jenkins\workspace\RobotTest\eclipse_2020\RobotProject
#robot test\TestSuite1.robot
#echo Completed  

#C:\Users\Premal\.jenkins\workspace\RobotTests\eclipse_04042020\RobotTest
