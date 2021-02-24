import "package:flutter/material.dart";

// Import Own Widgets
import "package:platzilearning/Widgets/Stars.dart";

class Description extends StatelessWidget {
	final String name;
	final int stars;
	final String description;

	Description({this.name, this.stars, this.description});

	@override
	Widget build(BuildContext context) {
		final title = Container(
			margin: EdgeInsets.symmetric(horizontal: 23),
			child: Text(
				this.name,
				style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Lato"),
			),
		);

		final descriptionText = Expanded(
			child: Container(
				margin: EdgeInsets.only(
					top: 20,
					left: 23,
					right: 20,
				),
				child: Text(
					this.description,
					style: TextStyle(
						fontFamily: "Lato",
						fontSize: 15,
						color: Color.fromRGBO(120,120,120,1),
					),
				),
			),
		);

		final double statusBarHeight = MediaQuery.of(context).padding.top;

		return Container(
			margin: EdgeInsets.only(top: statusBarHeight + 360),
			child: Column(
				children: <Widget>[
					Row(children: [
						title,
						new Stars(starsQuantity: 9,)
					]),
					Row(children: [
						descriptionText,
					]),
					Row(children: [
						Container(
							margin: EdgeInsets.only(top: 30, left: 23),
							height: 50,
							width: 180,
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(30),
								gradient: LinearGradient(
									colors: [
										Color(0xFF4268D3),
										Color(0xFF584CD1),
									],
									begin: FractionalOffset(0.2, 0.0),
									end: FractionalOffset(1, 0.6),
									stops: [0.0, 0.6],
									tileMode: TileMode.clamp,
								),
							),
							child: InkWell(
								onTap: () {
									Scaffold.of(context).showSnackBar(SnackBar(content: Text("Navigating...")));
								},
								borderRadius: BorderRadius.circular(30),
								child: Center(child: Text(
									"Navigate",
									style: TextStyle(
										color: Colors.white,
										fontSize: 18,
									),
								)),
							)
						),
					]),
				],
			)
		);
	}
}
