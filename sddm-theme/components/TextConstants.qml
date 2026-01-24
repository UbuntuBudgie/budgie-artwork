pragma Singleton

import QtQuick

QtObject {
    // This is a compatibility wrapper that redirects to TranslationManager
    readonly property string pressAnyKey: TranslationManager.pressAnyKey
    readonly property string username: TranslationManager.username
    readonly property string password: TranslationManager.password
    readonly property string login: TranslationManager.login
    readonly property string loggingIn: TranslationManager.loggingIn
    readonly property string loginFailed: TranslationManager.loginFailed
    readonly property string promptUser: TranslationManager.promptUser
    readonly property string capslockWarning: TranslationManager.capslockWarning
    readonly property string suspend: TranslationManager.suspend
    readonly property string reboot: TranslationManager.reboot
    readonly property string shutdown: TranslationManager.shutdown
}
```

Update **components/qmldir**:
```
singleton Config 1.0 Config.qml
singleton Languages 1.0 Languages.qml
singleton TranslationManager 1.0 TranslationManager.qml
singleton TextConstants 1.0 TextConstants.qml

Avatar 1.0 Avatar.qml
CVKeyboard 1.0 CVKeyboard.qml
IconButton 1.0 IconButton.qml
Input 1.0 Input.qml
LayoutSelector 1.0 LayoutSelector.qml
LockScreen 1.0 LockScreen.qml
LoginScreen 1.0 LoginScreen.qml
MenuArea 1.0 MenuArea.qml
PowerMenu 1.0 PowerMenu.qml
SessionSelector 1.0 SessionSelector.qml
Spinner 1.0 Spinner.qml
UserSelector 1.0 UserSelector.qml
