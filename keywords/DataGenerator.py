from robot.api import logger

def ButtonIsDisabled():
    bouton = "xpath=//button[@type='submit']"

    # Vérifiez si le bouton est désactivé
    if not bouton.enabled:
        print("Le bouton est désactivé.")
    else:
        print("Le bouton est activé.")
