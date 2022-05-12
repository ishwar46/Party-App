import 'package:NepaliCongressApp/index.dart';

class OnlineSanghralayaPage extends StatefulWidget {
  OnlineSanghralayaPage({Key key}) : super(key: key);

  @override
  _OnlineSanghralayaPageState createState() => _OnlineSanghralayaPageState();
}

class _OnlineSanghralayaPageState extends State<OnlineSanghralayaPage> {
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
            title: new Text('अनलाइन संग्रहालय'),
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
                      Text("This is अनलाइन संग्रहालय Page.",
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
