import 'package:NepaliCongressApp/index.dart';
import 'package:NepaliCongressApp/pages/dashboardpage.dart';
import 'package:mdi/mdi.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PressBigyapti extends StatefulWidget {
  PressBigyapti({Key key}) : super(key: key);

  @override
  _PressBigyaptiState createState() => _PressBigyaptiState();
}

class _PressBigyaptiState extends State<PressBigyapti> {
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
            title: new Text('प्रेस बिज्ञप्ति'),
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
                      Text("This is प्रेस बिज्ञप्ति Page.",
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
