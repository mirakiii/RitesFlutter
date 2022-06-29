// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rites_flutter/screens/about_screen.dart';
import 'package:rites_flutter/screens/home_screen.dart';
import 'package:rites_flutter/screens/dash_screen.dart';

import 'package:carousel_slider/carousel_slider.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel();
  final List<String> imagesList = [
    // 'https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg',
    'https://www.careerindia.com/img/2021/03/rites-1615443908.jpg',
    'https://images.unsplash.com/photo-1612878100556-032bbf1b3bab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    'https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1563731009729-709f0d03461b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
        'https://images.unsplash.com/photo-1541888946425-d81bb19240f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',

    // 'assets/47yrs.jpg',
    // 'assets/building.jpg',
  ];
  Widget _middlepart({required Widget child}) {
    return Container(
      height: 170,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            child: child,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 7, top: 7),
                child: Image.asset('assets/logo.png'),
              )
            ],
            title: Container(
              height: 37,
              // padding: EdgeInsets.only(top: 50, bottom: 50) ,
              child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          scale: 15,
                          image: AssetImage('assets/search.png'),
                        )),
                      ))),
            ),
            backgroundColor: Color.fromARGB(255, 21, 101, 192),
            bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 5,
                indicatorColor: Colors.white,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                tabs: [

                    InkWell(
                      onTap: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>(HomeScreen())));
                      print("Tapped a Home"); 
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 3, bottom: 10, left: 10, right: 10),
                        // color: Colors.blue[100],
                        child: const Text('HOME'),
                      ),
                      ),

                      InkWell(
                      onTap: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>(DashScreen())));
                      print("Tapped a dashboard"); 
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 3, bottom: 10, left: 10, right: 10),
                        // color: Colors.blue[100],
                        child: const Text('DASHBOARD'),
                      ),
                      ),

                      InkWell(
                      onTap: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>(AboutScreen())));
                      print("Tapped a About"); 
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 3, bottom: 10, left: 10, right: 10),
                        // color: Colors.blue[100],
                        child: const Text('ABOUT'),
                      ),
                      ),

                  // Text("Home", style: TextStyle(fontSize: 18)),
                  // Text("Dashboard", style: TextStyle(fontSize: 18flutt)),
                  // Text("About", style: TextStyle(fontSize: 18)),
                ]),
          ),

      //     body:  new Container(
      // margin: new EdgeInsets.all(10.0),
      // child: new Column(
      //   children: <Widget>[
      //     new Text(
      //       "newheadline",
      //       textAlign: TextAlign.center,
      //       style: new TextStyle(
      //           color: Colors.black,
      //           fontSize: 20.0,
      //           fontWeight: FontWeight.bold),
      //     ),
      //     new Padding(
      //       padding: new EdgeInsets.symmetric(vertical: 10.0),
      //       child: new Divider(
      //         height: 1.0,
      //         color: Colors.black,
      //       ),
      //     ),
      //     new Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         new Icon(
      //           Icons.access_time,
      //           color: Colors.grey,
      //         ),
      //         new Padding(
      //           padding: new EdgeInsets.symmetric(horizontal: 10.0),
      //         )
      //       ],
      //     ),
      //     new Container(
      //       width: double.infinity,
      //       height: 150.0,
      //       margin: new EdgeInsets.all(10.0),
      //            ),
      //     new Text(
      //       ("texthere"),
      //       style: new TextStyle(
      //         fontSize: 16.0,
      //       ),
      //     ),
          
      //   ],
      // ),),




            //code that actually works !
            // body:Center(
            // child: SingleChildScrollView(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         height: 200,
            //         width: double.infinity,
            //         // color: Colors.red,
            //         child: Image(image: AssetImage("search.png"))
            //       ),
            //       Container(
            //         height: 200,
            //         width: double.infinity,
            //         color: Colors.amber,
            //       ),
            //       Container(
            //         height: 200,
            //         width: double.infinity,
            //         color: Colors.blue,
            //       ),
            //        Container(
            //         height: 200,
            //         width: double.infinity,
            //         color: Colors.amber,
            //       ),
            //       Container(
            //         height: 200,
            //         width: double.infinity,
            //         color: Colors.blue,
            //       ),
                  
            //     ]
            //   )
            // )
            // )

            body:Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    // color: Colors.red,
                    // child: Image(image: AssetImage("search.png"))
                    child: Row(
                      children: [
                       Container(
                        width:10,
                       ),
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://www.careerindia.com/img/2021/03/rites-1615443908.jpg"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10), ),
                        Text("your text")   
                      ],
                    ),
                  ),
                  Row(
                      children: [
                       Container(
                        width:10,
                       ),
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10), ),
                        Text("your text")   
                      ],
                    ),
                    Row(
                      children: [
                       Container(
                        width:10,
                       ),
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10), ),
                        Text("your text")   
                      ],
                    ),
                    Row(
                      children: [
                       Container(
                        width:10,
                       ),
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10), ),
                        Text("your text")   
                      ],
                    ),
                    Row(
                      children: [
                       Container(
                        width:10,
                       ),
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10), ),
                        Text("your text")   
                      ],
                    ),
                    Row(
                      children: [
                       Container(
                        width:10,
                       ),
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10), ),
                        Text("your text")   
                      ],
                    ),
                  ]
                  ),
              )
            )
            )

          // body: Column(
          //   children: [
          //     Container(
          //       height: 250,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //         color: Color.fromARGB(255, 248, 244, 244),
          //       ),
          //       child: CarouselSlider(
          //         options: CarouselOptions(
          //           viewportFraction: 0.8,
          //           autoPlayAnimationDuration:
          //               const Duration(milliseconds: 100),
          //           autoPlay: true,
          //           enlargeCenterPage: true,
          //         ),
          //         items: imagesList
          //             .map(
          //               (item) => Center(
          //                 child: Image.network(
          //                   item,
          //                   fit: BoxFit.cover,
          //                 ),
          //               ),
          //             )
          //             .toList(),
          //       ),
          //     ),
          //     // Container(
          //     //   padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
          //     //   decoration: BoxDecoration(
          //     //     border: Border.all(),
          //     //   ),
          //     //   child: const Text(
          //     //     "RITES Ltd., Rail India Technical and Economic Service Limited, abbreviated as RITES Ltd, is under the ownership of Indian Railways, Ministry of Railways, Government of India and an engineering consultancy corporation, specializing in the field of transport infrastructure.  under the aegis of Indian Railways.",
          //     //     style: TextStyle(fontSize: 14.0),
          //     //   ),
          //     // ), 

          //     Flexible(
          //       child: GridView.count(
          //           primary: false,
          //           padding: const EdgeInsets.all(30),
          //           crossAxisSpacing: 20,
          //           mainAxisSpacing: 20,
          //           crossAxisCount: 3,
          //           childAspectRatio: 1 / 1,
          //           children: <Widget>[

          //            //dash
          //             InkWell(
          //             onTap: () { 
          //               Navigator.push(context, MaterialPageRoute(builder: (context)=>(DashScreen())));
          //             print("Tapped a dashboard"); 
          //             },
          //             child: Container(
          //               padding: const EdgeInsets.only(
          //                   top: 30, bottom: 20, left: 20, right: 20),
          //               color: Colors.blue[100],
          //               child: const Text('DASH BOARD'),
          //             ),
          //             ),

          //             //about
          //             InkWell(
          //             onTap: () { 
          //               Navigator.push(context, MaterialPageRoute(builder: (context)=>(AboutScreen())));
          //             print("Tapped a about"); 
          //             },
          //             child: Container(
          //               padding: const EdgeInsets.only(
          //                   top: 35, bottom: 20, left: 20, right: 20),
          //               color: Colors.blue[200],
          //               child: const Text('ABOUT'),
          //             ),
          //             ),

          //             //news
          //             InkWell(
          //             onTap: () { 
          //               Navigator.push(context, MaterialPageRoute(builder: (context)=>(NewsScreen())));
          //             print("Tapped on news"); 
          //             },
          //             child:  Container(
          //               padding: const EdgeInsets.only(
          //                   top: 35, bottom: 20, left: 20, right: 2),
          //               color: Colors.blue[300],
          //               child: const Text('NEWS'),
          //             ),
          //             ),

          //             //web
          //             InkWell(
          //             // onTap: () => launch('https://rites.com/'),
          //             child:  Container(
          //               padding: const EdgeInsets.only(
          //                   top: 35, bottom: 20, left: 30, right: 20),
          //               color: Colors.blue[400],
          //               child: const Text('WEB'),
          //             ),
          //             ),
                      
          //             //twitter
          //             InkWell(
          //             // onTap: () { 
          //             // print("Tapped a Container"); 
          //             // },
          //             //  onTap: () => launch('https://twitter.com/RITESLIMITED'),
          //             child: Container(
          //               padding: const EdgeInsets.only(
          //                   top: 35, bottom: 20, left: 12, right: 2),
          //               color: Colors.blue[500],
          //               child: const Text('TWITTER'),
          //             ),
          //             ),

          //             //koo
          //             InkWell(
          //             // onTap: () => launch('https://www.linkedin.com/in/rites-ltd-990ab4155/'),
          //             child: Container(
          //               padding: const EdgeInsets.only(
          //                   top: 35, bottom: 20, left: 12, right: 10),
          //               color: Colors.blue[700],
          //               child: const Text('LINKEDIN'),
          //             ),
          //             ),
                      
          //           ]),
          //     )
          //     // ],
          //     // )
          //     // SingleChildScrollView(
          //     //     scrollDirection: Axis.horizontal,
          //     //     child: Row(
          //     //       children: [
          //     //         _middlepart(
          //     //           child: Container(
          //     //             child:Column(
          //     //               children:[
          //     //                 Padding(
          //     //                   padding: EdgeInsets.all(12),
          //     //                   child:
          //     //                   Container(
          //     //                     padding: const EdgeInsets.all(16.0),
          //     //                     decoration: BoxDecoration(
          //     //                       border: Border.all(),
          //     //                     ),
          //     //                     child: const Text(
          //     //                       "FlutterBeads",
          //     //                       style: TextStyle(fontSize: 34.0),
          //     //                       ),
          //     //                   )
          //     //                   // Container(
          //     //                   //   height: 50,
          //     //                   //   width: 50,
          //     //                   //   decoration: BoxDecoration(
          //     //                   //     border: ,
          //     //                   //     image: DecorationImage(image: AssetImage('logo.png'),
          //     //                   //     )
          //     //                   //   )
          //     //                   // ),
          //     //                 ),
          //     //                 Text(' asdfghjklmzncbvhfunreiemket dddddddddddddddddddd dddddddddddddddddddddddddddddddddd ddddddddddddddddddd ddddddddddddd ddddddddddddddd')
          //     //               ],
          //     //             ),
          //     //           ),
          //     //         ),
          //     //       ],
          //     //     )
          //     // )
          //   ],
          // ),
        ));
  }
}

class _postCardView {
}
