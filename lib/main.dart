import 'package:flutter/material.dart';

void main() => runApp(ProfileWidget());

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color:Colors.grey),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(Icons.arrow_back, color: Colors.grey),
          actions: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return;
              },
            ),
            // Options button
          ],

        ),
        body: Container(
          width: double.infinity,
//          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        ("assets/images/elon_musk_royal_society.jpg"),
                      ),
                      radius: 60.0,
                    )
                  ],
                ),
              ),
              Text(
                "Elon Musk",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.0,
                ),
              ),
              Text(
                "PRODUCT DESIGNER",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(139, 139, 139, 1.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 10.0, 0.0),
                child: Text(
                  "Create great interfaces",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal
//                  color: Color.fromRGBO(139, 139, 139, 1.0),
                      ),
                ),
              ),
              Text(
                "@TwWorks",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.underline,
//                  color: Color.fromRGBO(139, 139, 139, 1.0),
                ),
              ),
              Container(
                width: 250.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/behance-logo.png",
                      width: 20,
                      height: 20,),
                      Image.asset("assets/images/behance-logo.png",
                        width: 20,
                        height: 20,),
                      Image.asset("assets/images/behance-logo.png",
                        width: 20,
                        height: 20,),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                child: Text(
                  "Hire Me",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                height: 45.0,
                minWidth: 170,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
              ),
              Divider(
                color: Colors.black,
                indent: 50,
                endIndent: 50,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            ("assets/images/Dribbble-icon.png"),
                          ),
                          radius: 40.0,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 2.0),
                          child: Text(
                            "1.3k",
                            style: TextStyle(
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Color.fromRGBO(204, 206, 216, 0.9),
                              fontSize: 22,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            ("assets/images/behance-logo.png"),
                          ),
                          radius: 40.0,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 2.0),
                          child: Text(
                            "1.3k",
                            style: TextStyle(
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Color.fromRGBO(204, 206, 216, 0.9),
                              fontSize: 22,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
