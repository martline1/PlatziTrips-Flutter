import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

// Import Own Widgets
// import "Views/Login.dart";
// import "AppNavigation.dart";

void main() => runApp(
	ProviderScope(child: MainWidget())
);

// class WeatherData {
// 	final String location;
// 	final double temperature;
// 	final String description;

// 	WeatherData({ this.location, this.temperature, this.description });
// }

// class WeatherRepository {
// 	static Future<WeatherData> getWeather(String location) async {
// 		await Future.delayed(Duration(seconds: 2));

// 		return WeatherData(
// 			location: location,
// 			description: "It's cold outside",
// 			temperature: 38,
// 		);
// 	}
// }

// class WeatherNotifier extends ChangeNotifier {
// 	bool _loading = false;
// 	String _error = "";
// 	WeatherData _weather;

// 	bool get loading => _loading;
// 	String get error => _error;
// 	WeatherData get weather => _weather;

// 	Future<void> getWeather() async {
// 		try {
// 			_loading = true;
// 			notifyListeners();

// 			_weather = await WeatherRepository.getWeather("NY");
// 			notifyListeners();
// 		} catch(err) {
// 			print(err);
// 			_error = "Couldn't fetch data";
// 			notifyListeners();
// 		}

// 		_loading = false;
// 		notifyListeners();
// 	}
// }

class CounterNotifier extends StateNotifier<int> {
	CounterNotifier() : super(0);

	void increment() {
		print("increment was called!");

		state = state + 1;
	}
}

final counterProvider = StateNotifierProvider((_) => CounterNotifier());

class MainWidget extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: "Platzi Trips",
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
				primarySwatch: Colors.blue,
				visualDensity: VisualDensity.adaptivePlatformDensity,
			),
			home: Scaffold(
				body: Center(
					child: Consumer(
						builder: (context, watch, child) {
							final counter = watch(counterProvider.state);

							return Text("You've pressed the button $counter times!!!");
						},
					),
				),
				floatingActionButton: FloatingActionButton(
					onPressed: () {
						context.read(counterProvider).increment();
					},
					child: Icon(Icons.add),
				),
			),
		);
	}
}

// class Counter extends StatefulWidget {
// 	@override
// 	_CounterState createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
// 	int _counter = 0;

// 	void increment() {
// 		setState(() {
// 			_counter++;		  
// 		});
// 	}

// 	@override
// 	Widget build(BuildContext context) {
// 		return ;
// 	}
// }
