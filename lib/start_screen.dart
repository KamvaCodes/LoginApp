import 'package:flutter/material.dart';
import 'package:strictlylocalapp/login_page.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);
  static const String id = 'start_screen';

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA2A2A2),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Bring Music To Life',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Sign in or create an account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 15),
                child: Image(
                  image: AssetImage('images/49494-removebg-preview.png'),
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Material(
                  color: Color(0XFFFFFFFF).withOpacity(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(37)),
                    side: BorderSide(color: Color(0XFFFFFFFF), width: 2),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, LoginPage.id);
                      });
                    },
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
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Material(
                  color: Color(0XFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(37)),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    height: 55.0,
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Color(0XFFA2A2A2),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
