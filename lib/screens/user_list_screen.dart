
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jarvix_application_1/screens/new_chat_scren.dart';
import 'package:jarvix_application_1/utils/const.dart';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});
  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final userList = jsonData['data'] as List<dynamic>;

      return userList.map((userData) => User.fromJson(userData)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
  late Future<List<User>> _users;

  @override
  void initState() {
    super.initState();
    _users = fetchUsers();
  }
  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: backgroundColor,
        title: SizedBox(
          height: 30,
          width: 115,
          child: Image.asset("assets/images/main_screens/app_bar_logo.png",fit: BoxFit.cover,),
        ),
        actions: [
          Container(
            height: 30,
            width: 110,
            margin: const EdgeInsets.only(right: 30),
            child: Image.asset("assets/images/main_screens/app_bar_action.png"))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  const EdgeInsets.only(left: 10),
                  child: Text('Menu',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                )),
            ),
          ),
          Container(
            height: 400,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewChat()));
                    Navigator.pushReplacement(
                      context, 
                      PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => const NewChat(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                      ),
                  );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    decoration: BoxDecoration(
                      // color: Color(0xffD8EFE8),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.add,color: buttonColor,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('New Chat',style: TextStyle(fontSize: 15),),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.message_outlined,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Prompt',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.save,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Saved Chat',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.settings,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Settings',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>))
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xffD8EFE8),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.supervised_user_circle_outlined,color: buttonColor,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('User List',style: TextStyle(fontSize: 15),),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  padding: const EdgeInsets.all(15),
                  height: 80,
                  width: size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        greenColor,
                        buttonColor
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                      ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 60,
                        child: Image.asset("assets/images/main_screens/crown.png",fit: BoxFit.cover,),
                      ),
                      const SizedBox(width: 8,),
                      Column(
                        children: const [
                          SizedBox(height: 15,),
                          Text("FULL VERSION: OFFERS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: size.height*0.8,
                  width: size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        // child: Text('USERS LIST',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                        // ),
                        child: RichText(text: const TextSpan(
                          text: "USERS ",
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: buttonColor),
                          children: [
                            TextSpan(
                              text: "LIST",
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),
                            )
                          ]
                        )),
                        ),
                      Expanded(
                        child: FutureBuilder<List<User>>(
                          future: _users,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final users = snapshot.data!;
                              return ListView.builder(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  final user = users[index];
                                  return Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage: NetworkImage(user.avatar),
                                        ),
                                        title: Text('${user.firstName} ${user.lastName}'),
                                        subtitle: Text(user.email),
                                      ),
                                      const Divider(indent: 20,endIndent: 20,color: Colors.grey,),
                                    ],
                                  );
                                },
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text('Error: ${snapshot.error}'),
                              );
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      ),
              ]),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            color: Colors.white, // Set the background color
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // Set the shadow color
                  spreadRadius: 2.0, // Set the spread radius
                  blurRadius: 5.0, // Set the blur radius
                  offset: const Offset(0, -3), // Set the offset
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextField(
                              decoration: InputDecoration(
                  hintText: 'Serach User Here..',
                  suffixIcon: const Icon(Icons.send_rounded,color: buttonColor,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                   ),
                   ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}