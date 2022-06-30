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
  
  final List<String> imagesList = [
    
    'https://www.careerindia.com/img/2021/03/rites-1615443908.jpg',
    'https://images.unsplash.com/photo-1612878100556-032bbf1b3bab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    'https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1563731009729-709f0d03461b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
        'https://images.unsplash.com/photo-1541888946425-d81bb19240f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',

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

                 
                ]),
          ),

     
            body:Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: 110,
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10, top: 23, left: 10, bottom: 10),
                    child: Row(
                      children: [
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/2/23/Container_Corporation_of_India_logo.svg/180px-Container_Corporation_of_India_logo.svg.png"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, left: 10), ), 
                      Container(
                        width: 220,
                        height: 80,
                        child: Text ("RITES Ltd on Thursday has bagged a contract worth Rs 364.56 crore from Container Corporation of India Ltd.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                      ),
                      ],
                    ),
                  ),

                  //2nd news column
                  Container(
                    height: 100,
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10),
                    child: Row(
                      children: [
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://www.metrorailnews.in/wp-content/uploads/2022/06/RITES-Guwahati-office-inauguration-696x464.jpeg"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, left: 10), ),  
                      Container(
                        width: 220,
                        height: 80,
                        child: Text (" RITES inaugurated its first office in Guwahati, Assam. Located opposite the Secretariat, in the heart of the city.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                      ),
                      ],
                    ),
                  ),

                  //3rd column
                  Container(
                    height: 100,
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10),
                    child: Row(
                      children: [
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.yMMT30rrbACCrEBMhOepAwHaEJ?pid=ImgDet&w=1280&h=718&rs=1"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, left: 10), ),  
                      Container(
                        width: 220,
                        height: 80,
                        child: Text ("IIT Guwahati signs MoU with RITES to collaborate for improving infrastructure facilities and promoting multimodal transport system.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                      ),
                      ],
                    ),
                  ),

                  //4th column
                  Container(
                    height: 100,
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10),
                    child: Row(
                      children: [
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.TkOzptPrUaYFm5uv5pPOygHaEK?pid=ImgDet&rs=1"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, left: 10), ),  
                      Container(
                        width: 220,
                        height: 80,
                        child: Text ("RITES signed a MoU with Grands Trains DU Senegal (GTS-S.A), a railroad company of Senegal, on technical cooperation in the railway sector.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                      ),
                      ],
                    ),
                  ),

                   //5th column
                  Container(
                    height: 100,
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10),
                    child: Row(
                      children: [
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://www.constructionworld.in/assets/uploads/8f504175cdc2a435d97a91902e4bae54.png"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, left: 10, top: 10), ),  
                      Container(
                        width: 220,
                        height: 80,
                        child: Text ("RITES has been conferred the first position at the 17th National Awards for Excellence in Cost Management-2019.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                      ),
                      ],
                    ),
                  ),

                   //5th column
                  Container(
                    height: 100,
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10),
                    child: Row(
                      children: [
                       Container(
                         width:100,
                         height: 100,
                         padding: EdgeInsets.only(right: 10, top: 10, left: 100, bottom: 10),
                         decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.x1cpGnLqHSalbbNkI5EbpgHaE-?pid=ImgDet&rs=1"),
                          fit: BoxFit.cover,
                          )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(right: 10, left: 10, top: 10), ),  
                      Container(
                        width: 220,
                        height: 80,
                        child: Text ("RITES signed a MoU with the Planning & Programme Implementation Department, Government of Mizoram",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis),
                      ),
                      ],
                    ),
                  ),


                  ]
                  ),
              )
            )
            )

         
        ); 
  }
}

