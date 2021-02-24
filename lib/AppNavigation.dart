import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

// Import Own Widgets
import "Views/Home.dart";
import "Views/Search.dart";
import "Views/Location.dart";
import "Views/Notifications.dart";
import "Views/Profile.dart";

class AppNavigation extends StatefulWidget {
	@override
	State<StatefulWidget> createState() => _AppNavigation();
}

class _AppNavigation extends State<AppNavigation> {
	int index = 0;

	final List<Widget> views = [
		Home(),
		Search(),
		Location(),
		Notifications(),
		Profile(),
	];

	void onTapPressed(int newIndex) {
		setState(() {
			this.index = newIndex;
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			bottomNavigationBar: CupertinoTabScaffold(
				tabBuilder: (BuildContext context, int index) {
					switch(index) {
						case 1:
							return CupertinoTabView(
								builder: (BuildContext context) => Search(),
							);
						case 2:
							return CupertinoTabView(
								builder: (BuildContext context) => Location(),
							);
						case 3:
							return CupertinoTabView(
								builder: (BuildContext context) => Notifications(),
							);
						case 4:
							return CupertinoTabView(
								builder: (BuildContext context) => Profile(),
							);
						case 0:
						default:
							return CupertinoTabView(
								builder: (BuildContext context) => Home(),
							);
					}
				},
				tabBar: CupertinoTabBar(
					activeColor: Colors.purple,
					inactiveColor: Colors.grey[700],
					backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
					items: [
						BottomNavigationBarItem(
							icon: Icon(Icons.home),
						),
						BottomNavigationBarItem(
							icon: Icon(Icons.search),
						),
						BottomNavigationBarItem(
							icon: Icon(Icons.location_on_outlined),
						),
						BottomNavigationBarItem(
							icon: Icon(Icons.notifications),
						),
						BottomNavigationBarItem(
							icon: Icon(Icons.person),
						),
					],
				),
			),
		);

		// return Scaffold(
		// 	body: views[index],
		// 	bottomNavigationBar: Theme(
		// 		data: Theme.of(context).copyWith(
		// 			canvasColor: Colors.white,
		// 			primaryColor: Colors.purple, // Icons colors
		// 		),
		// 		child: BottomNavigationBar(
		// 			showSelectedLabels: false,
		// 			showUnselectedLabels: false,
		// 			type: BottomNavigationBarType.fixed,
		// 			currentIndex: index,
		// 			onTap: onTapPressed,
		// 			items: [
		// 				BottomNavigationBarItem(
		// 					icon: Icon(Icons.home),
		// 					label: "",
		// 				),
		// 				BottomNavigationBarItem(
		// 					icon: Icon(Icons.search),
		// 					label: "",
		// 				),
		// 				BottomNavigationBarItem(
		// 					icon: Icon(Icons.location_on_outlined),
		// 					label: "",
		// 				),
		// 				BottomNavigationBarItem(
		// 					icon: Icon(Icons.notifications),
		// 					label: "",
		// 				),
		// 				BottomNavigationBarItem(
		// 					icon: Icon(Icons.person),
		// 					label: "",
		// 				),
		// 			],
		// 		),
		// 	),
		// );
	}
}
