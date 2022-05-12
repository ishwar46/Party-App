import 'package:NepaliCongressApp/index.dart';
import 'package:NepaliCongressApp/pages/dashboardpage.dart';
import 'package:NepaliCongressApp/pages/registerpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isSelected = false;
  bool _isLoading = false;
  final email = TextEditingController();
  final password = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              )
            : Container(),
      );

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          key: _scaffoldKey,
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
                      Card(
                        // elevation: 5.0,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 8,
                              ),
                              Center(
                                child: Text(
                                  'Account Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
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
                                    // key: _formKey,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Center(
                                          child: Text(
                                            'Proceed to Login',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
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
                                              Icons.person,
                                              color: Colors.grey,
                                            ),
                                            labelText: 'UserName/Email',
                                            hintText:
                                                "Please enter your email or username",
                                            hintStyle: TextStyle(
                                                color: Color(0xFF9b9b9b),
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          validator: (nameValue) {
                                            if (nameValue.isEmpty) {
                                              return 'Please enter your email or username';
                                            }
                                            // name = nameValue;
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(top: 30.0)),
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
                                            hintText: "Enter your Password",
                                            hintStyle: TextStyle(
                                                color: Color(0xFF9b9b9b),
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          validator: (passwordValue) {
                                            if (passwordValue.isEmpty) {
                                              return 'Please enter your password';
                                            }
                                            //  password = passwordValue;
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 12.0,
                                                ),
                                                GestureDetector(
                                                  onTap: _radio,
                                                  child:
                                                      radioButton(_isSelected),
                                                ),
                                                SizedBox(
                                                  width: 8.0,
                                                ),
                                                Text("Remember me",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Poppins-Medium"))
                                              ],
                                            ),
                                            Text(
                                              "Forgot Password?",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontFamily: "Poppins-Medium",
                                                  fontSize: 16),
                                            )
                                          ],
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
                                                            DashboardPage()));
                                              },
                                              minWidth: 150,
                                              child: Text(
                                                _isLoading
                                                    ? 'LOGING...'
                                                    : 'LOGIN',
                                                textDirection:
                                                    TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.0,
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.center,
                                        //   children: <Widget>[
                                        //     Container(
                                        //       padding: const EdgeInsets.only(
                                        //           top: 30.0),
                                        //       child: RaisedButton(
                                        //         child: Padding(
                                        //           padding: EdgeInsets.only(
                                        //               top: 15,
                                        //               bottom: 15,
                                        //               left: 60,
                                        //               right: 60),
                                        //           child: Text(
                                        //             _isLoading
                                        //                 ? 'LOGING...'
                                        //                 : 'LOGIN',
                                        //             textDirection:
                                        //                 TextDirection.ltr,
                                        //             style: TextStyle(
                                        //               color: Colors.white,
                                        //               fontSize: 20.0,
                                        //               fontFamily: 'Roboto',
                                        //               decoration:
                                        //                   TextDecoration.none,
                                        //               fontWeight:
                                        //                   FontWeight.w500,
                                        //             ),
                                        //           ),
                                        //         ),
                                        //         color: Color(0xFFFF835F),
                                        //         disabledColor: Colors.grey,
                                        //         shape:
                                        //             new RoundedRectangleBorder(
                                        //                 borderRadius:
                                        //                     new BorderRadius
                                        //                             .circular(
                                        //                         25.0)),
                                        //       //  onPressed:
                                        //            // _isLoading ? null : _login,
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'register');
                                          },
                                          child: Center(
                                            child: RichText(
                                              text: TextSpan(
                                                  text:
                                                      'Don\'t have an account?\n ',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                  children: [
                                                    TextSpan(
                                                      text: 'Sign Up Now',
                                                      style: TextStyle(
                                                          color: Colors.teal,
                                                          fontWeight:
                                                              FontWeight.bold),
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
                          ),
                        ),
                      ),
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

  // void _login() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  // }
}
