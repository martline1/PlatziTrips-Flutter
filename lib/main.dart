import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:provider/provider.dart";

// Import Own Widgets
import "AppNavigation.dart";

void main() => runApp(
	MultiProvider(
		providers: [
			ChangeNotifierProvider(create: (BuildContext context) => Counter())
		],
		child: MainWidget(),
	)
);

class Counter with ChangeNotifier, DiagnosticableTreeMixin {
	int _count = 0;

	int get count => _count;

	void increment() {
		_count++;
		notifyListeners();
	}

	// Makes `Counter` readable inside the devtools by listing all of its properties
	@override
	void debugFillProperties(DiagnosticPropertiesBuilder properties) {
		super.debugFillProperties(properties);

		properties.add(IntProperty("count", count));
	}
}

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
				body: Center(
					child: Text("You've pushed the button $counter this many times."),
				),
				floatingActionButton: FloatingActionButton(
					onPressed: () {},
					child: Icon(Icons.add),
				),
			),
			// home: AppNavigation(),
		)
	);
}

