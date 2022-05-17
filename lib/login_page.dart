import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome Back',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Sign into your account',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xff000000),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff000000),
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xff000000),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff000000),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                      color: Color(0Xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        side: BorderSide(color: Color(0XFF000000), width: 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        height: 55.0,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.1),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Column(
                children: [
                  Stack(
                    children: [
                      Divider(
                        color: Color(0XFF000000),
                        thickness: 1,
                        indent: MediaQuery.of(context).size.width * 0.2,
                        endIndent: MediaQuery.of(context).size.width * 0.2,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            color: Color(0XFFFFFFFF),
                            child: Text(
                              'or',
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          splashRadius: 10,
                          iconSize: 45,
                          icon: Image(
                            image: AssetImage('images/facebook.png'),
                          )),
                      SizedBox(width: 20),
                      IconButton(
                          onPressed: () {},
                          splashRadius: 10,
                          iconSize: 45,
                          icon: Image(
                            image: AssetImage('images/google.png'),
                          )),
                      SizedBox(width: 20),
                      IconButton(
                          onPressed: () {},
                          splashRadius: 10,
                          iconSize: 45,
                          icon: Image(
                            image: AssetImage('images/twitter.png'),
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
