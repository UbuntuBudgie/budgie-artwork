pragma Singleton

import QtQuick

QtObject {
    id: translationManager
    
    property string currentLocale: Qt.locale().name.substring(0, 2)
    
    // Simple in-memory translations (no file loading for now)
    property var translations: ({
        "es": {
            "pressAnyKey": "Presione cualquier tecla",
            "username": "Nombre de usuario",
            "password": "Contraseña",
            "login": "Iniciar sesión",
            "loggingIn": "Iniciando sesión",
            "loginFailed": "Error al iniciar sesión",
            "promptUser": "Ingrese su nombre de usuario",
            "capslockWarning": "Bloq Mayús está activado",
            "suspend": "Suspender",
            "reboot": "Reiniciar",
            "shutdown": "Apagar"
        },
        "fr": {
            "pressAnyKey": "Appuyez sur n'importe quelle touche",
            "username": "Nom d'utilisateur",
            "password": "Mot de passe",
            "login": "Connexion",
            "loggingIn": "Connexion en cours",
            "loginFailed": "Échec de la connexion",
            "promptUser": "Entrez votre nom d'utilisateur",
            "capslockWarning": "Verr Maj est activé",
            "suspend": "Suspendre",
            "reboot": "Redémarrer",
            "shutdown": "Éteindre"
        },
        "de": {
            "pressAnyKey": "Drücken Sie eine beliebige Taste",
            "username": "Benutzername",
            "password": "Passwort",
            "login": "Anmelden",
            "loggingIn": "Anmeldung läuft",
            "loginFailed": "Anmeldung fehlgeschlagen",
            "promptUser": "Geben Sie Ihren Benutzernamen ein",
            "capslockWarning": "Feststelltaste ist aktiviert",
            "suspend": "Bereitschaft",
            "reboot": "Neu starten",
            "shutdown": "Herunterfahren"
        }
    })
    
    function tr(key, fallback) {
        if (translations[currentLocale] && translations[currentLocale][key]) {
            return translations[currentLocale][key];
        }
        return fallback || key;
    }
    
    // Pre-defined translations
    readonly property string pressAnyKey: tr("pressAnyKey", "Press any key")
    readonly property string username: tr("username", "Username")
    readonly property string password: tr("password", "Password")
    readonly property string login: tr("login", "Login")
    readonly property string loggingIn: tr("loggingIn", "Logging in")
    readonly property string loginFailed: tr("loginFailed", "Login failed")
    readonly property string promptUser: tr("promptUser", "Enter your username")
    readonly property string capslockWarning: tr("capslockWarning", "Caps Lock is on")
    readonly property string suspend: tr("suspend", "Suspend")
    readonly property string reboot: tr("reboot", "Reboot")
    readonly property string shutdown: tr("shutdown", "Shutdown")
}

