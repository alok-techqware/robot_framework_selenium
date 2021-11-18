*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingFrames
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${rows}=     SeleniumLibrary.Get Element Count  xpah://table[@name='BookTable']/tbody/tr
    ${cols}=     SeleniumLibrary.Get Element Count  xpah://table[@name='BookTable']/tbody/tr[1]/th
    log to console  ${rows}
    log to console  ${cols}
    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console  ${data}
    table column should contain     xpath://table[@name='BookTable']    2   Author
    table row should contain    xpath://table[@name='BookTable']    4   Learn JS
    table cell should contain   xpath://table[@name='BookTable']    5   2   Mukesh
    table header should contain     xpath://table[@name='BookTable']    BookName
    close browser
*** Keywords ***