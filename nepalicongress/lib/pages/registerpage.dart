import 'package:NepaliCongressApp/index.dart';
import 'package:NepaliCongressApp/pages/loginpage.dart';

class RegisterPage extends StatefulWidget {
  // RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isloading = false;
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    address.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          key: _scaffoldKey,
          // backgroundColor: Colors.grey,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: <Widget>[
                      // BackgroundImage(image: 'assets/images/bg.png'),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/images/NepaliCongress.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Card(
                                  elevation: 4.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text(
                                              'Account Registration',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.teal,
                                              ),
                                            ),
                                          ),

                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0)),
                                          TextFormField(
                                            controller: name,
                                            style: TextStyle(
                                                color: Color(0xFF000000)),
                                            cursorColor: Color(0xFF9b9b9b),
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.person,
                                                color: Colors.grey,
                                              ),
                                              labelText: 'Full name',
                                              hintText:
                                                  "Please enter your full name",
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF9b9b9b),
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            validator: (nameValue) {
                                              if (nameValue.isEmpty) {
                                                return 'Please enter your name';
                                              }
                                              // name = nameValue;
                                              return null;
                                            },
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0)),
                                          TextFormField(
                                            controller: email,
                                            style: TextStyle(
                                                color: Color(0xFF000000)),
                                            cursorColor: Color(0xFF9b9b9b),
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.email,
                                                color: Colors.grey,
                                              ),
                                              labelText: 'Email',
                                              hintText:
                                                  "Enter your valid Email",
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF9b9b9b),
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            validator: (emailValue) {
                                              if (emailValue.isEmpty) {
                                                return 'Please enter your first name';
                                              }
                                              //email = emailValue;
                                              return null;
                                            },
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0)),
                                          TextFormField(
                                            controller: phone,
                                            style: TextStyle(
                                                color: Color(0xFF000000)),
                                            cursorColor: Color(0xFF9b9b9b),
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.phone,
                                                color: Colors.grey,
                                              ),
                                              labelText: 'Phone Number',
                                              hintText:
                                                  "Enter your Phone Number",
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF9b9b9b),
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            validator: (phoneNumber) {
                                              if (phoneNumber.isEmpty) {
                                                return 'Please enter your Contact Number';
                                              }
                                              //  phone = phoneNumber;
                                              return null;
                                            },
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0)),
                                          TextFormField(
                                            controller: password,
                                            style: TextStyle(
                                                color: Color(0xFF000000)),
                                            cursorColor: Color(0xFF9b9b9b),
                                            keyboardType: TextInputType.text,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.grey,
                                              ),
                                              labelText: 'Password',
                                              hintText: "Set Your Password",
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF9b9b9b),
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            validator: (passwordValue) {
                                              if (passwordValue.isEmpty) {
                                                return 'Please enter some text';
                                              }
                                              //  password = passwordValue;
                                              return null;
                                            },
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.0)),
                                          TextFormField(
                                            controller: password,
                                            style: TextStyle(
                                                color: Color(0xFF000000)),
                                            cursorColor: Color(0xFF9b9b9b),
                                            keyboardType: TextInputType.text,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.grey,
                                              ),
                                              labelText: 'Confirm Password',
                                              hintText:
                                                  "Enter your Password Again!",
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF9b9b9b),
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            validator: (passwordValue) {
                                              if (passwordValue.isEmpty) {
                                                return 'Please enter some text';
                                              }
                                              //  password = passwordValue;
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14.0, 8.0, 14.0, 8.0),
                                            child: Material(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.teal,
                                              elevation: 0.0,
                                              child: MaterialButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      new MaterialPageRoute(
                                                          builder: (context) =>
                                                              LoginPage()));
                                                },
                                                minWidth: 150,
                                                child: Text(
                                                  _isloading
                                                      ? "Registering....."
                                                      : "Register",
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.all(10.0),
                                          //   child: MaterialButton(
                                          //     child: Padding(
                                          //       padding:
                                          //           const EdgeInsets.fromLTRB(
                                          //               14.0, 8, 14, 8),
                                          //       child: Text(
                                          //         _isloading
                                          //             ? "Registering....."
                                          //             : "Register",
                                          //         textDirection:
                                          //             TextDirection.ltr,
                                          //         style: TextStyle(
                                          //           color: Colors.white,
                                          //           fontSize: 15.0,
                                          //           decoration:
                                          //               TextDecoration.none,
                                          //           fontWeight:
                                          //               FontWeight.normal,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     color: Colors.teal,
                                          //     disabledColor: Colors.grey,
                                          //     shape: new RoundedRectangleBorder(
                                          //         borderRadius:
                                          //             new BorderRadius.circular(
                                          //                 20.0)),
                                          //     onPressed: () {
                                          //       if (!_isloading) {
                                          //         // _register();
                                          //       }
                                          //     },
                                          //   ),
                                          // ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, 'login');
                                            },
                                            child: Center(
                                              child: RichText(
                                                text: TextSpan(
                                                    text:
                                                        'Already have an account?\n ',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            ' Proceed to Login',
                                                        style: TextStyle(
                                                            color: Colors.teal,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
