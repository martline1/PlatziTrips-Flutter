import "AuthProvider.dart";

class AuthService {
    static UserData login(String username, String password) {
        return UserData(
            name: "Thomas",
            lastname: "Crowley",
        );
    }
}
