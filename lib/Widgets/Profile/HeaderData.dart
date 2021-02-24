import "package:flutter/material.dart";

class HeaderData extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final double statusbarHeight = MediaQuery.of(context).padding.top;

		return Container(
			margin: EdgeInsets.only(bottom: 30),
			child: Column(
				children: <Widget>[
					Row(
						crossAxisAlignment: CrossAxisAlignment.baseline,
						children: <Widget>[
							Expanded(child: 
								Container(
									margin: EdgeInsets.only(top: statusbarHeight + 50, left: 30),
									alignment: Alignment.topLeft,
									child: Text(
										"Profile",
										style: TextStyle(
											color: Colors.white,
											fontSize: 35,
											fontWeight: FontWeight.w900,
											fontFamily: "Lato",
										),
									),
								),
							),
							Container(
								margin: EdgeInsets.only(right: 30),
								child: Icon(
									Icons.settings,
									size: 15,
									color: Colors.grey[350],
								),
							),
						],
					),
					Container(
						margin: EdgeInsets.only(top: 20),
						child: Row(
							children: [
								Container(
									margin: EdgeInsets.only(
										left: 30,
										right: 17,
									),
									padding: EdgeInsets.all(3),
									width: 93,
									height: 93,
									decoration: BoxDecoration(
										color: Color.fromRGBO(255, 255, 255, 0.8),
										shape: BoxShape.circle,
									),
									child: CircleAvatar(
										backgroundImage: AssetImage("assets/profile/user.png"),
									),
								),
								Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Container(
											margin: EdgeInsets.only(bottom: 5),
											child: Text(
												"Pathum Tzoo",
												style: TextStyle(
													fontSize: 22,
													color: Color.fromRGBO(255, 255, 255, 0.9),
												),
											),
										),
										Text(
											"pathumtzoo1@gmail.com",
											style: TextStyle(
												fontSize: 17,
												color: Color.fromRGBO(255, 255, 255, 0.4),
											),
										),
									],
								),
							],
						),
					),
					Container(
						margin: EdgeInsets.only(
							left: 30,
							right: 30,
							top: 20,
						),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								FloatingActionButton(
									backgroundColor: Colors.white,
									mini: true,
									tooltip: "Bookmark",
									onPressed: () {},
									child: Icon(Icons.bookmark_border_outlined, color: Color(0xFF4268D3)),
								),
								FloatingActionButton(
									backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
									mini: true,
									tooltip: "Gift",
									onPressed: () {},
									child: Icon(Icons.card_giftcard, color: Color(0xFF4268D3)),
								),
								FloatingActionButton(
									backgroundColor: Colors.white,
									tooltip: "Add",
									onPressed: () {},
									child: Icon(
										Icons.add,
										color: Color(0xFF4268D3),
										size: 45,
									),
								),
								FloatingActionButton(
									backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
									mini: true,
									tooltip: "Mail",
									onPressed: () {},
									child: Icon(Icons.mail_outline, color: Color(0xFF4268D3)),
								),
								FloatingActionButton(
									backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
									mini: true,
									tooltip: "Profile",
									onPressed: () {},
									child: Icon(Icons.person, color: Color(0xFF4268D3)),
								),
							],
						),
					)
				],
			)
		);
	}
}
