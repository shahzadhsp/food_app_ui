import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/login_screen.dart';

import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible = false;
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: key,
            child: Container(
              // color: Color(0xff212121),
              color: Color(0xffD4E157),
              height: height,
              width: width,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    child: CircleAvatar(
                      
                      backgroundImage: AssetImage('assets/foodlogo.png'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Food Bank',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    child: TextFormField(
                      validator: RequiredValidator(
                        errorText: 'Required',
                      ),
                      decoration: InputDecoration(
                          // labelText: 'Enter your First Name',
                          hintText: 'Enter Your First Name',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 18),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 35,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    child: TextFormField(
                      validator: RequiredValidator(
                        errorText: 'Required',
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          // labelText: 'Enter your Last Name',
                          hintText: 'Enter Your Last Name',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 18),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 35,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    child: TextFormField(
                      validator: EmailValidator(
                        errorText: "Invalid email",
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 30,
                          ),
                          filled: true,
                          // labelText: 'Enter your Email',
                          hintText: 'Enter Your Email',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    child: TextFormField(
                      obscureText: passwordVisible,
                      validator: RequiredValidator(errorText: "REquired"),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          //  labelText: 'Enter your Password',
                          hintText: 'Enter Your Password',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 18),
                          prefixIcon: Padding(
                            padding:  EdgeInsets.fromLTRB(10,10,10,10),
                            child: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,size: 30,color: Colors.black,),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: width * 0.05, vertical: height * 0.01),
                  //   child: TextFormField(
                  //     validator: RequiredValidator(
                  //       errorText: 'Required',
                  //     ),
                  //     decoration: InputDecoration(
                  //        fillColor: Colors.white,
                  //         filled: true,
                  //         labelText: 'Enter your cnic',
                  //         suffixIcon: Icon(Icons.remove_red_eye),

                  //         enabledBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(16.0),
                  //             borderSide: BorderSide(
                  //                 width: 2,
                  //                 color: Colors.white,
                  //                 style: BorderStyle.solid))),
                  //   ),
                  // ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    child: Container(
                      height: height * 0.08,
                      width: width,
                      child: ElevatedButton(
                          onPressed: () => ScaffoldMessenger.of(context)
                                  .showMaterialBanner(MaterialBanner(
                                      leading: Icon(Icons.agriculture_outlined),
                                      padding: EdgeInsets.all(20),
                                      backgroundColor: Colors.green,
                                      content: Text(
                                          'You Are Registered Successfully'),
                                      actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            ));
                                      },
                                      child: Text(
                                        'Login',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () =>
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentMaterialBanner(),
                                        child: Text(
                                          'DISMISS',
                                          style: TextStyle(color: Colors.black),
                                        ))
                                  ])),
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //  SizedBox(width: width*0.05,),
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),

                      TextButton(
                          onPressed: () {
                            if (key.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                            }
                          },
                          child: Text('Login')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
