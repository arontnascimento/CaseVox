Library  SeleniumLibrary

*** Keywords ***

Start Application
    Open Browser    https://the-internet.herokuapp.com/challenging_dom    chrome
    Maximize Browser Window


Close Application
    Close Browser


Então A aplicação apresenta o texto
    [Arguments]  ${texto}
    Wait Until Page Contains  ${texto}  20


Dado que estou na tela ${page}
    Run Keyword  Então A aplicação apresenta o texto  ${page}


Quando clico no elemento
    [Arguments]  ${elemento}
    Sleep  2
    Click Element  //a[@class='${elemento}']
    Capture Page Screenshot


Quando clico no link da coluna  
    [Arguments]  ${coluna}  ${link}
    Sleep  2
    Click Element  //td[text()='${coluna}']/parent::tr/td/a[text()='${link}']
    Capture Page Screenshot
