import "package:flutter/material.dart";

class FloatingActionBtn extends StatefulWidget {
	@override
	State<StatefulWidget> createState() => _FloatingActionBtn();
}

class _FloatingActionBtn extends State<FloatingActionBtn> {
	void onPressedFav() {
		Scaffold.of(context).showSnackBar(
			SnackBar(content: Text("Agregaste a favoritos!"))
		);
	}

	@override
	Widget build(BuildContext context) => FloatingActionButton(
		backgroundColor: Color(0xFF11DA53),
		mini: true,
		tooltip: "Fav",
		onPressed: onPressedFav,
		child: Icon(
			Icons.favorite_border,
		),
	);
}

class ImageCard extends StatelessWidget{ 
	final String path;

	ImageCard({ this.path });

	@override
	Widget build(BuildContext context) => Stack(
		alignment: Alignment(0.68, 1.15),
		children: <Widget>[
			Container(
				width: 300,
				height: 240,
				margin: EdgeInsets.only(top: 20, right: 30),
				alignment: Alignment.centerLeft,
				decoration: BoxDecoration(
					image: DecorationImage(
						fit: BoxFit.cover,
						image: AssetImage(this.path),
					),
					borderRadius: BorderRadius.all(Radius.circular(20)),
					shape: BoxShape.rectangle,
					boxShadow: <BoxShadow>[
						BoxShadow(
							color: Colors.black38,
							blurRadius: 15,
							offset: Offset(0.0, 7.0),
						)
					],
				),
			),
			FloatingActionBtn(),
		],
	);
}
