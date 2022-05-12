import 'package:NepaliCongressApp/index.dart';

class SideDrawer extends StatefulWidget {
  SideDrawer({Key key}) : super(key: key);

  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  buildList(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
        color: Colors.green.shade900,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'sans',
            color: Colors.green.shade900,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            color: Colors.green.shade900,
            child: Center(
                child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  backgroundImage:
                      ExactAssetImage('assets/images/NepaliCongress.png'),
                  minRadius: 20,
                  maxRadius: 50,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Uranus Tech Nepal',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ])),
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'गृहपृष्ठ',
            Icons.home,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //   return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'आगामी कार्यक्रम',
            Icons.supervisor_account,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //    return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'नेपालको नक्शा',
            Icons.my_location,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //   return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 3.0,
          ),
          buildList(
            'नेपालको संबिधान',
            Icons.wb_sunny,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //     return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'पार्टी संबिधान',
            Icons.contacts,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //    return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'सहयोग पुस्तिका',
            Icons.thumb_up,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //   return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'Privacy Policy',
            Icons.verified_user,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //  return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
          buildList(
            'बाहिरिनुस',
            Icons.touch_app,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    //     return null();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.green.shade900,
            height: 2.0,
          ),
        ],
      ),
    );
  }
}
