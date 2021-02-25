import "AuthService.dart";
import "package:platzilearning/Providers/CustomProvider.dart";

class UserData {
    final String name;
    final String lastname;

    UserData({ this.name, this.lastname });
}

class AuthProvider extends CustomProvider {
    bool loggedIn = false;
    UserData userData;

    void login(String username, String password) {
        final UserData data = AuthService.login(username, password);

        loggedIn = true;
        userData = data;

        notifyListeners();
    }

    void logout() {
        loggedIn = false;
        userData = null;

        notifyListeners();
    }
}
