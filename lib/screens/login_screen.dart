import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/different_food.dart';

import 'package:food_app_ui/screens/signup_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisibility=false;
  final key = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: key,
            child: Column(
              children: [
                Container(
                  height: height,
                  width: width,
                  color: Color(0xff212121),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.1,
                        width: width * 0.2,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/foodlogo1.jpg'),
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

                      //                      Text(
                      //                       'Welcome to our Store',
                      //                       style: TextStyle(
                      //                           color: Colors.white,
                      //                           fontSize: 12,
                      //                           fontWeight: FontWeight.bold),
                      //                     ),

                      SizedBox(
                        height: height * 0.12,
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
                              filled: true,
                              labelText: 'Enter your Email',
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
                          obscureText: passwordVisibility,
                          validator: RequiredValidator(errorText: "REquired"),
                          

                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Enter your Password',
                              suffixIcon: IconButton(onPressed: () {
                                setState(() {
                                  passwordVisibility=!passwordVisibility;
                                });
                              },icon: Icon(passwordVisibility?Icons.visibility:Icons.visibility_off),)
                              ,enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.white,
                                      style: BorderStyle.solid))),
                        ),
                      ),
                      //  SizedBox(height: height*0.015,),

                      Align(
                        widthFactor: width * 0.007,
                        alignment: Alignment.centerRight,
                        heightFactor: height * 0.0022,
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.09,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: height * 0.08,
                          width: width,
                          child: ElevatedButton(
                              onPressed: () {
                                if (key.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DifferentFood(),
                                  ));
                                }
                              },
                              child: Text('Login')),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ));
                          },
                          child: Text('Create New Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
