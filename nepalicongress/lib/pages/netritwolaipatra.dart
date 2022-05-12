import 'package:NepaliCongressApp/index.dart';

class NetritwolaiPatraPage extends StatefulWidget {
  NetritwolaiPatraPage({Key key}) : super(key: key);

  @override
  _NetritwolaiPatraPageState createState() => _NetritwolaiPatraPageState();
}

class _NetritwolaiPatraPageState extends State<NetritwolaiPatraPage> {
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
            title: new Text('नेतृत्वलाइ पत्र'),
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
                      Text("This is प्नेतृत्वलाइ पत्र Page.",
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
