import 'package:NepaliCongressApp/index.dart';

class PartyNiyamawaliPage extends StatefulWidget {
  PartyNiyamawaliPage({Key key}) : super(key: key);

  @override
  _PartyNiyamawaliPageState createState() => _PartyNiyamawaliPageState();
}

class _PartyNiyamawaliPageState extends State<PartyNiyamawaliPage> {
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
            title: new Text('पार्टी नियमावली'),
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
                      Text("This is पार्टी नियमावली Page.",
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
