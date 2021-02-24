import "package:flutter/material.dart";

// Import Own Widgets
import "package:platzilearning/Widgets/Stars.dart";

class Reviews extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final Widget review = Row(
			children: <Widget>[
				Container(
					margin: EdgeInsets.only(
						top: 20,
						left: 23,
						right: 20,
					),
					width: 70,
					height: 70,
					child: CircleAvatar(
						backgroundImage: AssetImage("assets/reviews/user.jpg"),
					),
				),
				Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						Text(
							"Varuna Yasas",
							style: TextStyle(
								fontSize: 17,
								fontWeight: FontWeight.bold,
								color: Colors.grey[800],
							),
						),
						Container(
							margin: EdgeInsets.symmetric(vertical: 3.2),
							child: Row(
								children: <Widget>[
									Text("1 review ", style: TextStyle(color: Colors.grey[600])),
									Icon(
										Icons.brightness_1,
										size: 5,
										color: Colors.grey[600],
									),
									Text(" 5 photos", style: TextStyle(color: Colors.grey[600]),),
									new Stars(starsQuantity: 5, size: 18)
								],
							),
						),
						Text(
							"That is such a nice place to be!",
							style: TextStyle(
								fontSize: 15,
							),
						),
					],
				),
			],
		);

		return Container(
			margin: EdgeInsets.only(top: 20, bottom: 50),
			child: Column(
				children: <Widget>[
					Container(
						margin: EdgeInsets.only(left: 23, top: 10),
						child: Row(
							children: [Text(
								"All Reviews",
								style: TextStyle(
									color: Colors.grey[700],
									fontSize: 18,
								),
							)],
						),
					),
					review,
					review,
					review,
					review,
				],
			),
		);
	}
}
