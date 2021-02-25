import "package:flutter/material.dart";

class CardData {
	String img;
	String title;
	String description;
	String steps;

	CardData({ this.img, this.title, this.description, this.steps });
}

class ProfileCard extends StatelessWidget {
	final CardData data;

	ProfileCard(this.data);

	@override
	Widget build(BuildContext context) {
		const padding = 30.0;
		final width   = MediaQuery.of(context).size.width;

		final containerWidth = width - (2 * padding);

		return Container(
			margin: EdgeInsets.only(bottom: 100),
			child: Stack(
				alignment: Alignment(0, 2.3),
				children: <Widget>[
					Container(
						margin: EdgeInsets.symmetric(horizontal: padding),
						width: containerWidth,
						height: width * 0.5,
						decoration: BoxDecoration(
							image: DecorationImage(
								fit: BoxFit.cover,
								image: AssetImage(data.img),
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
					Stack(
						alignment: Alignment(0.9, 1.3),
						children: <Widget>[
							Container(
								width: containerWidth * 0.73,
								// height: containerWidth * 0.35,
                                constraints: BoxConstraints(minHeight: containerWidth * 0.35),
								decoration: BoxDecoration(
									borderRadius: BorderRadius.all(Radius.circular(15)),
									color: Colors.white,
									boxShadow: <BoxShadow>[
										BoxShadow(
											color: Colors.black38,
											blurRadius: 15,
											offset: Offset(0.0, 7.0),
										)
									],
								),
								child: Container(
									padding: EdgeInsets.only(
										top: 15,
										left: 20,
										right: 20,
									),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Text(
												data.title,
												style: TextStyle(
													fontFamily: "Lato",
													fontWeight: FontWeight.w900,
													fontSize: 18
												),
											),
											Container(
												margin: EdgeInsets.symmetric(vertical: 7),
												child: Text(
													data.description,
													style: TextStyle(
														color: Colors.grey[500]
													),
												),
											),
											Container(
                                                margin: EdgeInsets.only(bottom: 10),
                                                child: Text(
                                                    "Steps: ${data.steps}",
                                                    style: TextStyle(
                                                        color: Colors.orange[700],
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16
                                                    ),
                                                ),
                                            )
										],
									),
								),
							),
							FloatingActionButton(
								backgroundColor: Color(0xFF11DA53),
								mini: true,
								tooltip: "Like!",
								onPressed: () {},
								child: Icon(
									Icons.favorite,
								),
							),
						],
					),
				],
			),
		);
	}
}
