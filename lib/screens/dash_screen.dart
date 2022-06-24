import 'dart:core';

import 'package:flutter/material.dart';
import 'package:rites_flutter/screens/login_screen.dart';
import 'package:rites_flutter/screens/profile_pic.dart';
import 'package:rites_flutter/screens/profile_menu.dart';
import 'package:rites_flutter/screens/home_screen.dart';
import 'package:rites_flutter/screens/About_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import 'package:carousel_slider/carousel_slider.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  //for sign out purpose

  @override
  _DashScreenState createState() => _DashScreenState();
}

// database class
// class DatabaseService {
//   final String uid;

//   DatabaseService({required this.uid});

//   final CollectionReference userCollection =
//       FirebaseFirestore.instance.collection('users');

//   Future deleteuser() {
//     return userCollection.document(uid).delete();
//   }
// }

//user class
class User {
  String uid;
  String lastname;
  String firstname;
  String email;

  User({
    this.uid = '',
    required this.firstname,
    required this.lastname,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'lastname': lastname,
        'firstname': firstname,
        'email': email,
      };

  static User fromJson(Map<String, dynamic> json) => User(
      uid: json['uid'],
      firstname: json['firstName'],
      lastname: json['secondName'],
      email: json['email']);
}

class _DashScreenState extends State<DashScreen> {
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

  //for reading users
  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('users')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());

  // String _curId(){

  // }

  //for account deletion
  // final FirebaseAuth _auth = FirebaseAuth.instance;

// Future deleteUser(String email, String password) async {
//     try {
//       FirebaseUser user = await _auth.currentUser();
//       AuthCredential credentials =
//           EmailAuthProvider.getCredential(email: email, password: password);
//       print(user);
//       AuthResult result = await user.reauthenticateWithCredential(credentials);
//       await DatabaseService(uid: result.user.uid).deleteuser(); // called from database class
//       await result.user.delete();
//       return true;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

  Future<LoginScreen> _signOut() async {
    await FirebaseAuth.instance.signOut();
    return const LoginScreen();
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (HomeScreen())));
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
                                builder: (context) => (DashScreen())));
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
                                builder: (context) => (AboutScreen())));
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

//           static String routeName = "/profile";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile"),
//       ),
//       body: Body(),
//       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
//     );
//   }
            body: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    ProfilePic(),
                    SizedBox(height: 20),
                    ProfileMenu(
                      text: "My Account",
                      icon: "assets/icons/User Icon.svg",
                      press: () => {},
                    ),
                    ProfileMenu(
                      text: "Notifications",
                      icon: "assets/icons/Bell.svg",
                      press: () {},
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
                      },
                    ),
                    ProfileMenu(
                        text: "Log Out",
                        icon: "assets/icons/Log out.svg",
                        press: () {
                          _signOut();
                          print("signedout");
                          //might add google sign out later
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (const LoginScreen())));
                        }),
                  ],
                ))));
  }
}
