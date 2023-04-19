import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/more_items.dart';

import '../custom_widgets.dart';

class DifferentFood extends StatefulWidget {
  const DifferentFood({super.key});

  @override
  State<DifferentFood> createState() => _DifferentFoodState();
}

class _DifferentFoodState extends State<DifferentFood> {
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // var screenClientHeight = height - kToolbarHeight;

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
                      Container(
                        height: height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/download2.jpeg'),
                                fit: BoxFit.fill)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Icon(
                                    Icons.menu,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.15,
                            ),
                            Text(
                              'Different \n Kind  of Food',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Food Category',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(height: height*0.07),
                            Container(
                                height: height * 0.04,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32.0)),
                                child: Divider(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.002,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyContainer(
                              image: 'assets/download4.jpeg',
                              name: 'zinger burger',
                              price: "2000pkr",
                            ),
                            MyContainer(
                              image: 'assets/download5.jpeg',
                              name: 'Pizza',
                              price: "4000pkr",
                            ),
                            MyContainer(
                              image: 'assets/download1.jpeg',
                              name: 'Fries & burger',
                              price: "5000pkr",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Food Category',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(height: height*0.07),
                            Container(
                                height: height * 0.04,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32.0)),
                                child: Divider(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyContainer(
                              image: 'assets/download4.jpeg',
                              name: 'zinger burger',
                              price: "2000pkr",
                            ),
                            MyContainer(
                              image: 'assets/download5.jpeg',
                              name: 'Pizza',
                              price: "4000pkr",
                            ),
                            MyContainer(
                              image: 'assets/download1.jpeg',
                              name: 'Fries & burger',
                              price: "5000pkr",
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('You could see more items?',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MoreItems(),));
                              },
                              child: Text(
                                'Click Here',
                                style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                              ))
                        ],
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

























































/*Stack(
        children: [
          Container(
            height: screenClientHeight * 0.5,
            width: width,
            color: Colors.amber,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.grey,
                )
              ],
            ),
            
          ),
          
        ],
      ),*/