import "package:flutter/material.dart";

// Import Own Widgets
import "package:platzilearning/Widgets/Home/ImageCard.dart";

class Header extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final double statusbarHeight = MediaQuery.of(context).padding.top;

		final gradientBackground = Container(
			height: statusbarHeight + 260,
			decoration: BoxDecoration(
				gradient: LinearGradient(
					colors: [
						Color(0xFF4268D3),
						Color(0xFF584CD1),
					],
					begin: FractionalOffset(0.2, 0.0),
					end: FractionalOffset(1.0, 0.6),
					stops: [0.0, 0.6],
					tileMode: TileMode.clamp,
				),
			),
		);

		return Stack(
			children: <Widget>[
				gradientBackground,
				Column(
					children: <Widget>[
						Container(
							margin: EdgeInsets.only(top: statusbarHeight + 30, left: 23),
							alignment: Alignment.topLeft,
							child: Text(
								"Popular",
								style: TextStyle(
									color: Colors.white,
									fontSize: 35,
									fontWeight: FontWeight.bold,
									fontFamily: "Lato",
								),
							),
						),
						Row(children: [Expanded(
							child:
								Container(
									height: 280,
									child: ListView(
										padding: EdgeInsets.only(
											left: 23,
											right: 25,
											bottom: 20,
										),
										scrollDirection: Axis.horizontal,
										children: <Widget>[
											new ImageCard(path: "assets/img/mountain_stars.jpeg"),
											new ImageCard(path: "assets/img/beach_palm.jpeg"),
											new ImageCard(path: "assets/img/mountain.jpeg"),
											new ImageCard(path: "assets/img/river.jpeg"),
											new ImageCard(path: "assets/img/beach.jpeg"),
											new ImageCard(path: "assets/img/sunset.jpeg"),
										],
									),
								),
						)]),
					],
				),
			],
		);
	}
}
