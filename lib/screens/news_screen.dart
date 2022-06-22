import 'package:flutter/material.dart';

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
    // 'https://www.careerindia.com/img/2021/03/rites-1615443908.jpg',
    // 'https://images.unsplash.com/photo-1612878100556-032bbf1b3bab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    // 'https://images.unsplash.com/photo-1539269071019-8bc6d57b0205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    // 'https://images.unsplash.com/photo-1563731009729-709f0d03461b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
    // 'https://images.unsplash.com/photo-1541888946425-d81bb19240f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
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
                  Text("Home", style: TextStyle(fontSize: 18)),
                  Text("Dashboard", style: TextStyle(fontSize: 18)),
                  Text("About", style: TextStyle(fontSize: 18)),
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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: const Text(
                  "RITES Ltd., Rail India Technical and Economic Service Limited, abbreviated as RITES Ltd, is under the ownership of Indian Railways, Ministry of Railways, Government of India and an engineering consultancy corporation, specializing in the field of transport infrastructure.  under the aegis of Indian Railways.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),

              
            ],
          ),
        ));
  }
}
