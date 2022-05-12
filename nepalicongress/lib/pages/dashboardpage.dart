import 'package:NepaliCongressApp/index.dart';
import 'package:NepaliCongressApp/pages/khulabahas.dart';
import 'package:NepaliCongressApp/pages/loginpage.dart';
import 'package:NepaliCongressApp/pages/netritwolaipatra.dart';
import 'package:NepaliCongressApp/pages/onlinelibrary.dart';
import 'package:NepaliCongressApp/pages/onlinesanghralaya.dart';
import 'package:NepaliCongressApp/pages/partyniyamawali.dart';
import 'package:NepaliCongressApp/pages/pressbigyapti.dart';
import 'package:NepaliCongressApp/widgets/drawer.dart';
import 'package:mdi/mdi.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,

          appBar: new AppBar(
            title: new Text('गृहपृष्ठ',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            //for setting white color
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.green.shade800,
            actions: <Widget>[
              new IconButton(
                  icon: Icon(Icons.notification_important),
                  color: Colors.white,
                  onPressed: null),
              RaisedButton(
                onPressed: () {
                  //  CallApi().logout();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                splashColor: Colors.yellow,
                color: Colors.green.shade800,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(Icons.login, color: Colors.white),
                    ),
                    Text("बहिरिनुस",
                        style: TextStyle(color: Colors.white, fontSize: 18))
                  ],
                ),
              ),
            ],
            elevation: 5,
          ),
          drawer: SideDrawer(),

          // BackgroundImage(image: 'assets/images/bg.png'),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              //  BackgroundImage(image: 'assets/images/bg.png'),
              new Stack(
                children: <Widget>[
                  //   BackgroundImage(image: 'assets/images/bg.png'),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 150,
                    width: 500,
                    decoration: BoxDecoration(
                      //  color: Colors.transparent,
                      color: Colors.green.shade600,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      child: Text(("नमस्ते!" + " जय नेपाल"),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              letterSpacing: 1.5)),
                      // child: Text(("Namaste !") + (userData!= null ? '${userData['name']}' : 'user'),),
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 110, left: 50),
                    height: 70.0,
                    width: 300.0,
                    child: Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 10.0,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(30.0, 15, 30, 0),
                                child: Text(
                                  "शुभ " + greeting(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Open-Sans",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      letterSpacing: 1.5),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
              new Container(
                margin: EdgeInsets.only(top: 30),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PressBigyapti()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        width: 130,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.white,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.new_releases,
                                  size: 30.0, color: Colors.black),
                              Text("प्रेस बिज्ञप्ति",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PartyNiyamawaliPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        width: 130,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.white,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.new_releases,
                                  size: 30.0, color: Colors.black),
                              Text("पार्टी नियमावली ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      //fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NetritwolaiPatraPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        width: 130,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.white,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.new_releases,
                                  size: 30.0, color: Colors.black),
                              Text("नेतृत्वलाइ पत्र",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      //fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KhulaBahasPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        width: 130,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.white,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.new_releases,
                                  size: 30.0, color: Colors.black),
                              Text("खुला बहस",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      //   fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 1)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnlineSanghralayaPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        width: 130,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.white,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.new_releases,
                                  size: 30.0, color: Colors.black),
                              Text("अनलाइन संग्रहालय",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      // fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnlineLibraryPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        width: 130,
                        child: Card(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.white,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.new_releases,
                                  size: 30.0, color: Colors.black),
                              Text("अनलाइन लाइबेरी",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      //  fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 30),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("आगामी कार्यक्रमहरु",
                                  style: TextStyle(
                                      color: Colors.white,
                                      // fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("परिपत्र",
                                  style: TextStyle(
                                      color: Colors.white,
                                      //fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("घोसणा पत्र",
                                  style: TextStyle(
                                      color: Colors.white,
                                      // fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("दस्ताबेज",
                                  style: TextStyle(
                                      color: Colors.white,
                                      //  fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("सभापतिको संदेश ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      //  fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("नेपालको संबिधान ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      //  fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("नेपालि कांग्रेसको इतिहास",
                                  style: TextStyle(
                                      color: Colors.white,
                                      //fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          //margin: EdgeInsets.all(10),
                          //elevation: 10.0,
                          color: Colors.green.shade700,
                          child: Container(
                              child: Center(
                                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.new_releases,
                              //     size: 25.0, color: Colors.white),
                              Text("पार्टी संबिधान ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      // fontFamily: "Open-Sans",
                                      fontSize: 16,
                                      letterSpacing: 2)),
                            ],
                          ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'बिहानी';
    }
    if (hour < 17) {
      return 'सन्ध्या';
    }
    if (hour < 20) {
      return 'साँझ ';
    } else {
      return 'रात्रि';
    }
  }
}
