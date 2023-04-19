import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'signup_screen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: height,
                  width: width,
                  color: Color(0xff212121),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/foodlogo.png'),
                      ),
                      SizedBox(
                        height: height * 0.002,
                      ),
                      Text(
                        'Food Bank',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      SizedBox(
                        height: height * 0.002,
                      ),
                      Text(
                        'Special & Delicious food',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: height * 0.2,
                      ),
                      Container(
                        height: height * 0.05,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32.0)),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.05,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Color(0xffff3d00),
                            borderRadius: BorderRadius.circular(32.0)),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      Container(
                        height: height * 0.2,
                        width: width * 0.8,
                        color: Colors.red,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          '15%\n Discount',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'From\n our Store',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/download2.jpeg'),
                                          fit: BoxFit.fill)),
                                )))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
