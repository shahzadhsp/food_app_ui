// ignore_for_file: must_be_immutable



import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  String title;
  String image;
  String destitle;

  MyListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.destitle});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Column(
        children: [
          Text(destitle, style: TextStyle(fontSize: 12.0)),
          Row(
            children: [
              Text(
                '200pkr',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
              ),
              Container(
                  height: height * 0.015,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(
                    child: Text(
                      ' Add | Cart ',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          )
        ],
      ),
      leading: CircleAvatar(
        foregroundImage: AssetImage(
          image,
        ),
      ),
    );
  }
}

// My Custom Container widget
class MyContainer extends StatelessWidget {
   String image;
   String name;
   String price;
   MyContainer({super.key,required this.image,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return Column(
      children: [
        
        Container(
          height: height * 0.1,
          width: width * 0.28,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill)),
        ),
        SizedBox(height: height*0.002,),
        Text(name,style: TextStyle(fontSize: 12,color: Colors.white),),
        Text(price,style: TextStyle(fontSize: 12,color: Colors.white),),
        SizedBox(height: height*0.005,),
        Container(
          
          
          height: height*0.05, decoration: BoxDecoration(
            color: Color(0xffc41c00),
              borderRadius: BorderRadius.circular(16.0),
              ),
          width: width*0.3,child: Center(child: Text('Add || Cart')),
        
        )
        
        
      ],
    );
  }
}
class MyCustomText extends StatelessWidget {
  String title;
   MyCustomText({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(title)],);
  }
}

