*** Settings ***
Library      SeleniumLibrary
Resource   ../pages/InstagramPage.robot


Test Setup    Aller Sur La Page Instagram
Test Teardown    Close Browser



*** Test Cases ***
Se connecter à Instagram avec succès
   Vérifier Que Vous etes Sur La Page Instagram
   Entrer Le Nom D'utilisateur Et Le Mot De Passe
   Vérifier avec succès que la page Instagram a été connectée

Se connecter à Instagram mot de passe invalide
    Vérifier Que Vous etes Sur La Page Instagram
    Entrer le dot de passe invalide
    Vérifier le message d'erreur pour le mot de passe

Se connecter à Instagram nom d'utilisateur invalide
     Vérifier Que Vous etes Sur La Page Instagram
     Entrer le nom d'utilisateur invalide
     Vérifier le message d'erreur pour le nom d'utilisateur invalide

Essaye de te connecter avec un nom d'utilisateur et un mot de passe vides
    Vérifier Que Vous Etes Sur La Page Instagram
    Laisser et Vérifier les champs d'utilisateur et de mot de passe vides



