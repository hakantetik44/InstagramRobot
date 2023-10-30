*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py

*** Keywords ***
Aller sur la page Instagram
   Open Browser   ${Datas.UrlInsta}    chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    15s
   Click Element    ${PLocaters.AccepterCookies}



Vérifier Que Vous etes Sur La Page Instagram
   Element Should Contain      ${PLocaters.btnSeconnectterFace}    ${Datas.expectedTextSeConnecterFace}
   Element Should Contain    ${PLocaters.btnInscription}       ${Datas.expectedTextInscription}


Entrer le nom d'utilisateur et le mot de passe

    Input Text      ${PLocaters.placeNomDeUtilasateur}   ${Datas.Email}
    Input Text      ${Plocaters.placePassword}    ${Datas.Password}
    Sleep    1s
    Click Element    ${PLocaters.btnSeconnectter}



Vérifier avec succès que la page Instagram a été connectée
     Element Should Contain        ${Plocaters.btnAccueil}     Accueil








