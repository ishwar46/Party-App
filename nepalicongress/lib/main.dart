import 'package:NepaliCongressApp/index.dart';
import 'package:NepaliCongressApp/pages/dashboardpage.dart';
import 'package:NepaliCongressApp/pages/loginpage.dart';
import 'package:NepaliCongressApp/pages/registerpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepali Congress',
      debugShowCheckedModeBanner: false,
      home: CheckAuth(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        primaryColor: Colors.cyan[400],
        accentColor: Colors.deepOrange[200],
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'dashboard': (context) => DashboardPage(),
      },
    );
  }
}

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = DashboardPage();
    } else {
      child = LoginPage();
    }
    return Scaffold(
      body: child,
    );
  }
}
