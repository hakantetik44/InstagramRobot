*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py

*** Keywords ***
Aller sur la page Instagram
   Open Browser   ${Datas.UrlInsta}    chrome    options=add_argument("--headless")

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


Entrer le dot de passe invalide

       Input Text      ${PLocaters.placeNomDeUtilasateur}   ${Datas.Email}
       Input Text      ${Plocaters.placePassword}    ${Datas.invalidPassword}
       Sleep    2s
       Click Element    ${PLocaters.btnSeconnectter}


Vérifier le message d'erreur pour le mot de passe

    ${actual_textIncorrectPassword}   Get Text    ${PLocaters.MessageMotDePasseIncorrect}
    Should Be Equal       ${actual_textIncorrectPassword}     ${Datas.expectedTextPourIncorrectPassword}


Entrer le nom d'utilisateur invalide

        Input Text      ${PLocaters.placeNomDeUtilasateur}   ${Datas.invalidNomDeUtilisateur}
        Input Text      ${Plocaters.placePassword}    ${Datas.Password}
        Sleep    2s
        Click Element    ${PLocaters.btnSeconnectter}

Vérifier le message d'erreur pour le nom d'utilisateur invalide

    ${actual_textInvalideNom}   Get Text    ${PLocaters.MessageNomDeUtilisateurIncorrect}
    Should Be Equal       ${actual_textInvalideNom}     ${Datas.expectedTextPourIncorrectNomDeUtilisateur}


Laisser et Vérifier les champs d'utilisateur et de mot de passe vides

  ${element_textUsername}  Get Text  ${PLocaters.placeNomDeUtilasateur}
  Should Be Empty  ${element_textUsername}



  ${element_textPassword}   Get Text   ${Plocaters.placePassword}
  Should Be Empty   ${element_textPassword}

 ${is_disabled} = Element Should Be Disabled    ${PLocaters.btnSeconnectter}
 Run Keyword If    ${is_disabled} == "True"
 Log    Element is disabled




