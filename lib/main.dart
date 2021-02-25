import "package:flutter/material.dart";
import "package:provider/provider.dart";

// Import Own Widgets
import "Providers/Auth/AuthProvider.dart";
import "Views/Login.dart";
// import "AppNavigation.dart";

void main() => runApp(
	MultiProvider(
		providers: [
			ChangeNotifierProvider(create: (BuildContext context) => AuthProvider())
		],
		child: MainWidget(),
	)
);

class MainWidget extends StatelessWidget {
	final int counter = 12;

	@override
	Widget build(BuildContext context) => (
		MaterialApp(
			title: "Platzi Learning",
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
				primarySwatch: Colors.blue,
				visualDensity: VisualDensity.adaptivePlatformDensity,
			),
			home: Scaffold(
                body: Login(),
            ),
		)
	);
}

