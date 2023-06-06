
import 'package:flutter/material.dart';
import 'package:jarvix_application_1/screens/user_list_screen.dart';
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
                Container(
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
                      Icon(Icons.add,color: buttonColor,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('New Chat',style: TextStyle(fontSize: 15),),
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
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserList()));
                    Navigator.pushReplacement(
                        context, 
                        PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => const UserList(),
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
              children: const [
                // Your main content here
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
                  hintText: 'Type Here..',
                  suffixIcon: const Icon(Icons.send_rounded,color: buttonColor,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                              ),
                              onChanged: (value) {
                  // Handle search query changes
                              },
                            ),
                ),
                const Padding(
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