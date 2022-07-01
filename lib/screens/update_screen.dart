// ignore_for_file: prefer_const_constructors

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:rites_flutter/screens/login_screen.dart';
import 'package:rites_flutter/screens/profile_pic.dart';
import 'package:rites_flutter/screens/profile_menu.dart';
import 'package:rites_flutter/screens/home_screen.dart';
import 'package:rites_flutter/screens/About_screen.dart';
import 'package:rites_flutter/screens/dash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import 'package:carousel_slider/carousel_slider.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}


class _UpdateScreenState extends State<UpdateScreen> {
  get async => null;

  Widget _middlepart({required Widget child}) {
    return Container(
      height: 170,
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            child: child,
          )
        ],
      ),
    );
  }

  Future<LoginScreen> _signOut() async {
    await FirebaseAuth.instance.signOut();
    return const LoginScreen();
  }

  late String myEmail;
  late String myname;

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 7, top: 7),
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
                        contentPadding: const EdgeInsets.only(top: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Container(
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              image: const DecorationImage(
                            scale: 15,
                            image: const AssetImage('assets/search.png'),
                          )),
                        ))),
              ),
              backgroundColor: const Color.fromARGB(255, 21, 101, 192),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (const HomeScreen())));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (const DashScreen())));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (const AboutScreen())));
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
            body: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    const ProfilePic(),
                    const SizedBox(height: 20),
                      Container(
                      child:
                        Text("PROFILE UPDATE"),
                      ),
                    // Container(
                    //   child: FutureBuilder(
                    //     future: _fetchname(),
                    //     builder: (context, snapshot) {
                    //       // return Text(" ");
                    //       if (snapshot.connectionState !=
                    //           ConnectionState.done) {
                    //         return const Text(" ");
                    //       }
                    //       return ProfileMenu(
                    //         icon: "assets/icons/User Icon.svg",
                    //         text: ("HI, $myname"),
                    //         press: () =>{
                             
                    //         }
                    //         );
                    //     },
                    //   ),
                    // ),
                    // Container(
                    //   child: FutureBuilder(
                    //     future: _fetchmail(),
                    //     builder: (context, snapshot) {
                    //       if (snapshot.connectionState !=
                    //           ConnectionState.done) {
                    //         return const Text(" ");
                    //       }
                    //       return ProfileMenu(
                    //       icon: "assets/icons/User Icon.svg",
                    //       text: ("Email: $myEmail"),
                    //       press: () =>{
                             
                    //         }
                    //       );
                    //     },
                    //   ),
                    // ),
                    ProfileMenu(
                      // text: ,
                      
                      text: "ENTER NEW NAME: ",
                      icon: "assets/icons/User Icon.svg",
                      press: () => {
                        // FutureBuilder(
                        //   future: _fetchmail(),
                        //   builder: (context, snapshot) {
                        //     if (snapshot.connectionState !=
                        //         ConnectionState.done) {
                        //       return const Text("Loading data...Please wait");
                        //     }
                        //     return Text("Email : $myEmail");
                        //   },
                        // ),
                      },
                    ),
                    TextField (  
                        decoration: InputDecoration(  
                        border: InputBorder.none,
                        // ProfileMenu(icon:"assets/icons/Bell.svg" , text: 'hi',),
                        

                        labelText: 'Enter Name',  
                        hintText: 'Enter Your Name'  
                      ),  
                    ),
                    ProfileMenu(
                      text: "ENTER NEW EMAIL: ",
                      icon: "assets/icons/Bell.svg",
                      press: () {
                        // FutureBuilder(
                        //   future: _fetchname(),
                        //   builder: (context, snapshot) {
                        //     if (snapshot.connectionState !=
                        //         ConnectionState.done) {
                        //       return const Text("Loading data...Please wait");
                        //     }
                        //     return Text("name : $myname");
                        //   },
                        // );
                      },
                    ),
                    ProfileMenu(
                      text: "Settings",
                      icon: "assets/icons/Settings.svg",
                      press: () {},
                    ),
                    ProfileMenu(
                      text: "Delete Account",
                      icon: "assets/icons/Question mark.svg",
                      press: () {
                        // await AuthService().deleteUser(email, password);
                        // FirebaseUser user =
                        //     await FirebaseAuth.instance.currentUser!;
                        // user.delete();
                        // final docuser = FirebaseFirestore.instance
                        //     .collection('users')
                        //     .doc(_curId());
                        // docuser.delete();
                        _signOut();
                        print("deleted");
                        Fluttertoast.showToast(msg: "Account deleted");
                        //might add google sign out later
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (const LoginScreen())));
                      },
                    ),
                    ProfileMenu(
                        text: "Log Out",
                        icon: "assets/icons/Log out.svg",
                        press: () {
                          _signOut();
                          print("signedout");
                          Fluttertoast.showToast(msg: "sign out Successful");
                          //might add google sign out later
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (const LoginScreen())));
                        }),
                  ],
                ))));
  }

  _fetchmail() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        myEmail = ds.data()!['email'];
        print(myEmail);
      }).catchError((e) {
        print(e);
      });
    }
    // return myEmail;
  }

  _fetchname() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        myname = ds.data()!['firstName'];
        print(myname);
      }).catchError((e) {
        print(e);
      });
    }
  }
}
