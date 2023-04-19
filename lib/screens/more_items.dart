import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/favourite_items.dart';
import 'package:food_app_ui/screens/models.dart';
import 'package:food_app_ui/screens/screentwo.dart';

class MoreItems extends StatefulWidget {
  const MoreItems({super.key});

  @override
  State<MoreItems> createState() => _MoreItemsState();
}

class _MoreItemsState extends State<MoreItems> {
  List<int> selectedItems = [];

  // List<NamesModel> selectedItems = [
  //   NamesModel(
  //       image: 'assets/download.jpeg', title: 'Zinger', price: '200 dollars'),
  //   NamesModel(
  //       image: 'assets/download1.jpeg',
  //       title: 'Fries & Burger',
  //       price: '250 dollars'),
  //   NamesModel(
  //       image: 'assets/download2.jpeg',
  //       title: 'Zinger & drink',
  //       price: '300 dollars'),
  //   NamesModel(
  //       image: 'assets/download3.jpeg',
  //       title: 'JumboOffer',
  //       price: '500 dollars'),
  //   NamesModel(
  //       image: 'assets/download4.jpeg',
  //       title: 'Couple Offer',
  //       price: '150 dollars'),
  //   NamesModel(
  //       image: 'assets/download5.jpeg',
  //       title: 'Family Offer',
  //       price: '100 dollars'),
  // ];
  @override
  void initState() {
    super.initState();
    selectedItems.length;
    setState(() {});
  }

  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        key: key,
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  return key.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.apps,
                  color: Colors.pink,
                )),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Hasil pur',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Expanded(child: CupertinoTextField()),
                    Icon(Icons.search)
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(40)),
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                  onPressed: () async{
                   final value=await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FavouriteItems(selectedItems: selectedItems),
                        ));
                    
                    setState(() {
                    
                    });
                  },
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.pinkAccent,
                  ),
                ))
          ],
        ),

        //Here is navigtion drawer code
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  currentAccountPictureSize: Size(50, 50),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/foodlogo.png'),
                  ),
                  accountName: Text('Muhammad Shahzad'),
                  accountEmail: Text('shezi495612@gmail.com'),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 24,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 24,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  size: 24,
                ),
                title: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.rate_review,
                  size: 24,
                ),
                title: Text(
                  'Rate Us',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.more,
                  size: 24,
                ),
                title: Text(
                  'More',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 24,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip,
                  size: 24,
                ),
                title: Text(
                  'Privacy Settings',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo(),));
              }, child: ListTile(
                leading: Icon(
                  Icons.login_outlined,
                  size: 24,
                ),
                title: Text(
                  'Login or Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),),
            ],
          ),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemCount: 100,
          itemBuilder: (context, index) {
            var listTile = ListTile(
              onTap: () {
                if (selectedItems.contains(index)) {
                  selectedItems.remove(index);
                } else {
                  selectedItems.add(index);
                  print(index);
                }

                setState(() {});
              },
              title: Text(
                'Items ' + index.toString(),
              ),
              trailing: Icon(selectedItems.contains(index)
                  ? Icons.favorite
                  : Icons.favorite_border_outlined),
            );

            return listTile;

            // GestureDetector(
            //   onTap: () {
            //     selectedItems.add(index);
            //   },
            //   child: Container(
            //     color: Colors.red,
            //     height: 100,
            //     width: 100,            ),
            // );
          },
        ));
  }
}







/*
Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.0,
              ),
              child: Container(
                height: height * 0.2,
                width: width * 0.03,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/download.jpeg',
                              ))),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          // SizedBox(
                          //   height: height * 0.002,
                          // ),
                          Spacer(),
                          Text('Zinger Burger'),
                          Spacer(),
                          // SizedBox(
                          //   height: height * 0.006,
                          // ),
                          Text('Zinger & Burger'),
                          Spacer(),
                          // SizedBox(
                          //   height: height * 0.006,
                          // ),
                          ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return ListView(
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              selectedItems=selectedItems;
                                            });
                                          },
                                          leading: Icon(selectedItems
                                                  .contains(index)
                                              ? Icons.favorite
                                              : Icons
                                                  .favorite_outline_outlined),
                                          title: Text('Add Item'),
                                        ),
                                        // ListTile(
                                        //   leading: Icon(Icons.favorite_outline_outlined),
                                        //   title: Text('Remove Item'),
                                        // )
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Center(child: Text('Add || Cart')))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            );
 */




























/*
ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Muhammad Shahzad',
                style: TextStyle(fontSize: 18),
              ),
              accountEmail:
                  Text('Mshahzad@gmail.com', style: TextStyle(fontSize: 16)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/shahzad.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,size: 24,),
              title: Text('Home',
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            ),
             ListTile(
              leading: Icon(Icons.share,size: 24,),
              title: Text('Share',
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            ),
   ListTile(
              leading: Icon(Icons.rate_review,size: 24,),
              title: Text('Rate Us',
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            ),
             ListTile(
              leading: Icon(Icons.settings,size: 24,),
              title: Text('Setting',
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            ),
             ListTile(
              leading: Icon(Icons.privacy_tip,size: 24,),
              title: Text('Privacy Setting',
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            )
  
  
  
          ],
        ),
 */