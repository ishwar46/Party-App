import 'package:NepaliCongressApp/index.dart';

class KhulaBahasPage extends StatefulWidget {
  KhulaBahasPage({Key key}) : super(key: key);

  @override
  _KhulaBahasPageState createState() => _KhulaBahasPageState();
}

class _KhulaBahasPageState extends State<KhulaBahasPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            title: new Text('खुला बहस'),
            backgroundColor: Colors.green.shade800,
            elevation: 5,
          ),
          body: new Container(
            width: screenSize.width,
            height: screenSize.height,
            child: new ListView(
              children: <Widget>[
                new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("This is खुला बहस Page.",
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
