*** Settings ***
Library     SeleniumLibrary
Resource   ../pages/PayLeadPage.robot


Test Setup    Aller Sur La Page Instagram



*** Test Cases ***
Aller dans l'onglet banque
   Vérifier Que Vous etes Sur La Page Instagram
   Entrer Le Nom D'utilisateur Et Le Mot De Passe
   Vérifier avec succès que la page Instagram a été connectée


