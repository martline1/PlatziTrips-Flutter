import "package:flutter/material.dart";

class Login extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final createTitle = (String msg) => Row(children: [
            Text(
                msg,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Lato",
                    fontSize: 28,
                ),
            ),
        ]);

        final loginWithGoogleBtn = Container(
            height: 50.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                        Color(0xFF8df777),
                        Color(0xFF19b56e),
                    ],
                    begin: FractionalOffset(0, 0.5),
                    end: FractionalOffset(1, 0.5),
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    onTap: () {},
                    child: Center(
                        child: Row(children: [
                            Icon(
                                Icons.settings_ethernet_outlined,
                                color: Colors.white,
                            ),
                            Text(
                                "Login with Google",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                )
                            ),
                        ]),
                    )
                ),
            ),
        ); 

        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                        Color(0xFF4268D3),
                        Color(0xFF584CD1),
                    ],
                    begin: FractionalOffset(0.2, 0),
                    end: FractionalOffset(0.8, 0.5),
                    tileMode: TileMode.clamp,
                ),
            ),
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        createTitle("Welcome"),
                        createTitle("This is your Travel app"),
                        Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(children: [
                                Expanded(
                                    child: loginWithGoogleBtn,
                                ),
                            ]),
                        ),
                    ],
                ),
            ),
        );
    }
}
