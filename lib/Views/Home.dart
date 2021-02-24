import "package:flutter/material.dart";

// Import Own Widgets
import "package:platzilearning/Widgets/Home/Header.dart";
import "package:platzilearning/Widgets/Home/Description.dart";
import "package:platzilearning/Widgets/Home/Reviews.dart";

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) => Stack(
		children: <Widget>[
			ListView(
				children: <Widget>[
					new Description(
						name: "Duwili Ella",
						stars: 5,
						description: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorem nesciunt expedita enim, possimus perspiciatis quis provident porro consectetur adipisicing elit. Eligendi dolorem nesciunt expedita enim, possimus perspiciatis que velit!\n\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorem nesciunt expedita enim, possimus pe Eligendi  possimus perspiciatis que velit!",
					),
					new Reviews(),
				],
			),
			new Header(),
		],
	);
}
