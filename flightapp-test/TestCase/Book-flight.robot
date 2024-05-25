*** Settings ***
Library        AppiumLibrary
Resource    ../Page Object Model/Openapp.robot
Resource    ../TestCase/Login.robot

*** Keywords ***

Verify Open App
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   
    ...                              text=support@ngendigital.com
Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   
    ...                              text=support@ngendigital.com

Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    
    ...           text=abc123

Click Sign In at homepage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Click Sign In At LoginPage
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]


Click Book at homepage
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Click book
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Choose Price and Date flight
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]    
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Click confirm
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]


*** Test Cases ***
User booked flight ticket
    Open Flight Application
    Click Sign In at homepage
    Input Username
    Input Password
    Click Sign In At LoginPage
    Click Book at homepage
    Click book
    Choose Price and Date flight
    Click confirm

    