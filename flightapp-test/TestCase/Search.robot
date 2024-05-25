*** Settings ***
Library        AppiumLibrary
Resource        ../Page Object Model/Openapp.robot
Resource        ../TestCase/Login.robot


*** Keywords ***

Click Sign In at homepage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Input Username
    Sleep    time_=20s
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   
    ...                              text=support@ngendigital.com

Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    
    ...           text=abc123

Click Sign In At LoginPage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Click search
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Input flight code
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    
    ...            text=CADX2214

*** Test Cases ***
User can search contents
    Open Flight Application
    Click Sign In at homepage
    Input Username
    Input Password
    Click Sign In At LoginPage
    Click Search 
    

