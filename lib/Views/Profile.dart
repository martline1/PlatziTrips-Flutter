import "package:flutter/material.dart";

// Import Own Widgets
import "package:platzilearning/Widgets/Profile/HeaderData.dart";
import "package:platzilearning/Widgets/Profile/ProfileCard.dart";

class Profile extends StatelessWidget {
	static const images = [
		"assets/img/mountain_stars.jpeg",
		"assets/img/beach_palm.jpeg",
		"assets/img/mountain.jpeg",
		"assets/img/river.jpeg",
		"assets/img/beach.jpeg",
		"assets/img/sunset.jpeg",
	];

	final data = Profile.images.map((String img) => new CardData(
		img: img,
		title: "Knuckles Mountains Range",
		description: "Hiking this amazing mountains is sure something you can't miss!",
		steps: "123,123,123"
	));

	@override
	Widget build(BuildContext context) {
		double statusBarHeight = MediaQuery.of(context).padding.top;

		final backgroundGradient = Container(
			height: statusBarHeight + 400,
			decoration: BoxDecoration(
				gradient: LinearGradient(
					colors: [
						Color(0xFF4268D3),
						Color(0xFF584CD1),
					],
					begin: FractionalOffset(0.2, 0.0),
					end: FractionalOffset(1.1, 0.6),
					tileMode: TileMode.clamp,
				),
			),
		);

		return Stack(
			children: <Widget>[
				backgroundGradient,
				ListView(
					children: <Widget>[
						HeaderData(),
						...this.data.map((CardData cardData) => ProfileCard(cardData)),
					],
				)
			],
		);
	}
}
