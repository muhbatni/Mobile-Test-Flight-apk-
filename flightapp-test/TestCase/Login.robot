*** Settings ***
Library        AppiumLibrary
Resource        ../Page Object Model/Openapp.robot

*** Keywords ***
Verify Open App
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

Click Sign In at homepage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   
    ...                              text=support@ngendigital.com

Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    
    ...           text=abc123

Click Sign In At LoginPage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Success Sign
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]             
    Element Should Be Visible            locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

*** Test Cases ***
User can be able login with valid data
    Open Flight Application
    Verify Open App
    Click Sign In at homepage
    Input Username
    Input Password
    Click Sign In At LoginPage
    Verify Success Sign


