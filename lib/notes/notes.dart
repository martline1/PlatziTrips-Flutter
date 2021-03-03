

// PROVIDER FAMILY
// class FakeHttpClient {
// 	Future<String> getMethod(String url) async {
// 		await Future.delayed(const Duration(seconds: 1));

// 		return "Response from $url";
// 	}
// }

// final fakeHttpClientProvider = Provider((_) => FakeHttpClient());

// // If we want to re-run the provider even with the same arguments, we have to pass "autoDispose" flag
// final responseProvider = FutureProvider.autoDispose.family<String, String>((ProviderReference ref, String url) async {
// 	final httpClient = ref.read(fakeHttpClientProvider);

// 	return httpClient.getMethod(url);
// });

// class MainWidget extends StatelessWidget {
// 	@override
// 	Widget build(BuildContext context) {
// 		return MaterialApp(
// 			title: "Platzi Trips",
// 			debugShowCheckedModeBanner: false,
// 			theme: ThemeData(
// 				primarySwatch: Colors.blue,
// 				visualDensity: VisualDensity.adaptivePlatformDensity,
// 			),
// 			home: Scaffold(
// 				body: Center(
// 					child: Consumer(
// 						builder: (context, watch, child) {
// 							// By default the state is persisted for any given param
// 							final responseAsyncValue = watch(responseProvider("https://google.com/data"));

// 							return responseAsyncValue.map(
// 								data: (response) => Text("Value is: ${response.value}"),
// 								loading: (_) => CircularProgressIndicator(),
// 								error: (err) => Text(
// 									"Error: ${err.error.toString()}",
// 									style: TextStyle(color:  Colors.red),
// 								),
// 							);
// 						},
// 					),
// 				),
// 			),
// 		);
// 	}
// }

// FUTURE PROVIDER
// class FakeHttpClient {
// 	Future<String> getMethod(String url) async {
// 		await Future.delayed(const Duration(seconds: 1));

// 		return "Response from $url";
// 	}
// }

// final fakeHttpClientProvider = Provider((_) => FakeHttpClient());
// final responseProvider       = FutureProvider<String>((ProviderReference ref) async {
// 	final httpClient = ref.read(fakeHttpClientProvider);

// 	return httpClient.getMethod("https://google.com");
// });

// class MainWidget extends StatelessWidget {
// 	@override
// 	Widget build(BuildContext context) {
// 		return MaterialApp(
// 			title: "Platzi Trips",
// 			debugShowCheckedModeBanner: false,
// 			theme: ThemeData(
// 				primarySwatch: Colors.blue,
// 				visualDensity: VisualDensity.adaptivePlatformDensity,
// 			),
// 			home: Scaffold(
// 				body: Center(
// 					child: Consumer(
// 						builder: (context, watch, child) {
// 							final responseAsyncValue = watch(responseProvider);

// 							return responseAsyncValue.map(
// 								data: (response) => Text("Value is: ${response.value}"),
// 								loading: (_) => CircularProgressIndicator(),
// 								error: (err) => Text(
// 									"Error: ${err.error.toString()}",
// 									style: TextStyle(color:  Colors.red),
// 								),
// 							);
// 						},
// 					),
// 				),
// 			),
// 		);
// 	}
// }

// Change notifier
// class IncrementNotifier extends ChangeNotifier {
// 	int _value = 0;
// 	int get value => _value;

// 	void increment() {
// 		_value++;

// 		notifyListeners();
// 	}
// }

// final incrementProvider = ChangeNotifierProvider((ref) => IncrementNotifier());

// class MainWidget extends StatelessWidget {
// 	@override
// 	Widget build(BuildContext context) {
// 		return MaterialApp(
// 			title: "Platzi Learning",
// 			debugShowCheckedModeBanner: false,
// 			theme: ThemeData(
// 				primarySwatch: Colors.blue,
// 				visualDensity: VisualDensity.adaptivePlatformDensity,
// 			),
// 			home: Scaffold(
//                 body: Center(
// 					child: Consumer(
// 						builder: (context, watch, child) {
// 							final incrementNotifier = watch(incrementProvider);

// 							return Text("The value is: ${incrementNotifier.value.toString()}");
// 						}
// 					),
// 				),
// 				floatingActionButton: FloatingActionButton(
// 					onPressed: () {
// 						context.read(incrementProvider).increment();
// 					},
// 					child: Icon(Icons.add),
// 				),
//             ),
// 		);
// 	}
// }

// CONSUMER
// final helloWorldProvider = Provider((ProviderReference ref) => "Hello world3");

// class MainWidget extends StatelessWidget {
// 	@override
// 	Widget build(BuildContext context) {
// 		return MaterialApp(
// 			title: "Platzi Learning",
// 			debugShowCheckedModeBanner: false,
// 			theme: ThemeData(
// 				primarySwatch: Colors.blue,
// 				visualDensity: VisualDensity.adaptivePlatformDensity,
// 			),
// 			home: Scaffold(
//                 body: Center(
// 					child: Consumer(
// 						builder: (context, watch, child) {
// 							final value = watch(helloWorldProvider);

// 							return Text(value);
// 						}
// 					),
// 				),
//             ),
// 		);
// 	}
// }

// CONSUMER WIDGET
// final helloWorldProvider = Provider((ProviderReference ref) => "Hello world2");

// class MainWidget extends ConsumerWidget {
// 	@override
// 	Widget build(BuildContext context, ScopedReader watch) {
// 		final String value = watch(helloWorldProvider);

// 		return MaterialApp(
// 			title: "Platzi Learning",
// 			debugShowCheckedModeBanner: false,
// 			theme: ThemeData(
// 				primarySwatch: Colors.blue,
// 				visualDensity: VisualDensity.adaptivePlatformDensity,
// 			),
// 			home: Scaffold(
//                 body: Center(
// 					child: Text(value),
// 				),
//             ),
// 		);
// 	}
// }
