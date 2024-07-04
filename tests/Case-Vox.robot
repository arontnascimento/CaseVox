
*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot

Test Setup  Start Application
Test Teardown  Close Application

*** Test Cases ***
Acessar webPage e interagir com elementos
    Dado que estou na tela Challenging DOM
    Quando clico no elemento  button
    Quando clico no elemento  button alert
    Quando clico no elemento  button success
    Quando clico no link da coluna  Phaedrum0  edit
    Quando clico no link da coluna  Phaedrum0  delete
    Quando clico no link da coluna  Phaedrum1  edit
    Quando clico no link da coluna  Phaedrum1  delete
    Quando clico no link da coluna  Phaedrum2  edit
    Quando clico no link da coluna  Phaedrum2  delete
    Quando clico no link da coluna  Phaedrum3  edit
    Quando clico no link da coluna  Phaedrum3  delete
    Quando clico no link da coluna  Phaedrum4  edit
    Quando clico no link da coluna  Phaedrum4  delete
    Quando clico no link da coluna  Phaedrum5  edit
    Quando clico no link da coluna  Phaedrum5  delete
    Quando clico no link da coluna  Phaedrum6  edit
    Quando clico no link da coluna  Phaedrum6  delete
    Quando clico no link da coluna  Phaedrum7  edit
    Quando clico no link da coluna  Phaedrum7  delete
    Quando clico no link da coluna  Phaedrum8  edit
    Quando clico no link da coluna  Phaedrum8  delete
    Quando clico no link da coluna  Phaedrum9  edit
    Quando clico no link da coluna  Phaedrum9  delete
