import 'package:flutter/material.dart';
import 'package:rites_flutter/screens/news_screen.dart';
import 'package:rites_flutter/screens/home_screen.dart';
import 'package:rites_flutter/screens/dash_screen.dart';

import 'package:carousel_slider/carousel_slider.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                  // Text("Dashboard", style: TextStyle(fontSize: 18)),
                  // Text("About", style: TextStyle(fontSize: 18)),
                ]),
          ),
          body: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 244, 244),
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.8,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 100),
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: imagesList
                      .map(
                        (item) => Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              // 

        //       ListView(
        //   padding: EdgeInsets.all(20),
        //   children: <Widget>[
        //     CircleAvatar(
        //       maxRadius: 50,
        //       backgroundColor: Colors.black,
        //       child: Icon(Icons.person, color: Colors.white, size: 50),
        //     ),
        //     Center(
        //       child: Text(
        //         'Sooraj S Nair',
        //         style: TextStyle(
        //           fontSize: 50,
        //         ),
        //       ),
        //     ),
        //     Text(
        //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //   ],
        // ),


              Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
                decoration: BoxDecoration(
                  // border: Border.all(),
                ),
                child: const Text(
                  "RITES Ltd. , Rail India Technical and Economic Service Limited, abbreviated as RITES Ltd, is under the ownership of Indian Railways, Ministry of Railways, Government of India and an engineering consultancy corporation, specializing in the field of transport infrastructure.  under the aegis of Indian Railways.Rites Limited is a Public incorporated on 26 April 1974. It is classified as Union Govt company and is registered at Registrar of Companies, Delhi. Its authorized share capital is Rs. 3,000,000,000 and its paid up capital is Rs. 2,403,018,750. It is inolved in OTHER BUSINESS ACTIVITIES The company was incorporated by the Ministry of Railways",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              // SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //     child: Column(
              //       children: [
              //         _middlepart(
              //           child: Container(
              //             child:Column(
              //               children:[
              //                 Padding(
              //                   padding: EdgeInsets.all(12),
              //                   child:
              //                   Container(
              //                     padding: const EdgeInsets.all(16.0),
              //                     decoration: BoxDecoration(
              //                       border: Border.all(),
              //                     ),
              //                     child: const Text(
              //                       "FlutterBeads",
              //                       style: TextStyle(fontSize: 34.0),
              //                       ),
              //                   )
              //                   // Container(
              //                   //   height: 50,
              //                   //   width: 50,
              //                   //   decoration: BoxDecoration(
              //                   //     border: ,
              //                   //     image: DecorationImage(image: AssetImage('logo.png'),
              //                   //     )
              //                   //   )
              //                   // ),
              //                 ),
              //                 Text(' ddddddddddddd ddddddddddddddd')
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     )
              // )
          ]),
        ));
  }
}
