// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jarvix_application_1/utils/const.dart';

class NewChat extends StatefulWidget {
  const NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: backgroundColor,
        title: Container(
          height: 30,
          width: 115,
          child: Image.asset("assets/images/main_screens/app_bar_logo.png",fit: BoxFit.cover,),
        ),
        actions: [
          Container(
            height: 30,
            width: 110,
            margin: EdgeInsets.only(right: 30),
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
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('Menu',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                )),
            ),
          ),
          Container(
            height: 400,
            width: size.width,
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.add,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('New Chat',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.message_outlined,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Prompt',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.save,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Saved Chat',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8EFE8),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.settings,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Settings',style: TextStyle(fontSize: 15),),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  padding: EdgeInsets.all(15),
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(
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
                      Container(
                        height: 50,
                        width: 60,
                        child: Image.asset("assets/images/main_screens/crown.png",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        children: [
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
                // Your main content here
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            color: Colors.white, // Set the background color
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // Set the shadow color
                  spreadRadius: 2.0, // Set the spread radius
                  blurRadius: 5.0, // Set the blur radius
                  offset: Offset(0, -3), // Set the offset
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextField(
                              decoration: InputDecoration(
                  hintText: 'Type Here..',
                  suffixIcon: Icon(Icons.send_rounded,color: buttonColor,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                              ),
                              onChanged: (value) {
                  // Handle search query changes
                              },
                            ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.save_outlined,color: greenColor,))
              ],
            )
          ),
        ],
      ),
    );
  }
}