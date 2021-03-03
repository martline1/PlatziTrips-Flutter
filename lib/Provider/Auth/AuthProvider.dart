import "package:flutter/foundation.dart";
import "package:google_sign_in/google_sign_in.dart";

// Import Own Widgets
// import "package:platzilearning/Repository/CustomProvider.dart";

class AuthProvider extends ChangeNotifier {
	GoogleSignInAccount _account;

	final GoogleSignIn _googleSignIn = GoogleSignIn();
	
	GoogleSignInAccount get account => _account;

	AuthProvider() {
		_googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
			_account = account;

			print("Changed user");

			notifyListeners();
		});
	}

	Future signIn() async {
		try {
			print("Entró en login");
			GoogleSignInAccount user = await _googleSignIn.signIn();

			print("Se completó el login");
		} catch (err) {
			print(err);
		}
	}
}
