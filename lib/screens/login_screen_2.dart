// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jarvix_application_1/utils/const.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});
    @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  void showLoginModalSheet(BuildContext context,Size size) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10,),
            Text('Welcome back!',style: TextStyle(color: buttonColor,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            InkWell(
              child: Container(
               margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
               width: size.width,
               decoration: BoxDecoration(
                color: buttonColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
               ), 
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Icon(Icons.email,color: Colors.white,),
                       SizedBox(width: 10,),
                      Text('SIGN IN WITH EMAIL',style: TextStyle(color: Colors.white),),
                       SizedBox(width: 10,),
                   ],
                 ),
               ),
              ),
            ),
            Container(
             margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
             width: size.width,
             decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
             ), 
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    Icon(Icons.apple,color: Colors.white,),
                     SizedBox(width: 10,),
                    Text('SIGN IN WITH APPLE',style: TextStyle(color: Colors.white),),
                     SizedBox(width: 10,),
                 ],
               ),
             ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
               margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
               width: size.width,
               decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
               ), 
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Icon(Icons.g_mobiledata,color: Colors.white,size: 28,),
                       SizedBox(width: 10,),
                      Text('SIGN IN WITH GOOGLE',style: TextStyle(color: Colors.white),),
                       SizedBox(width: 10,),
                   ],
                 ),
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              // width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "  ,style: TextStyle(fontSize: 12,color: Colors.black),),
                  InkWell(
                    onTap: (){
                      // showLoginModalSheet(context,size);
                      showSignUpModalSheet(context,size);
                    },
                    child: Text('Get Started',style: TextStyle(color: greenColor,decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.bold))),

                ],
              ),
            ),
            SizedBox(height: 20,)

          ],
        ),
      );
    },
  );
}

void showSignUpModalSheet(BuildContext context,Size size) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10,),
            Text('Welcome to Jarvix GPT-3!',style: TextStyle(color: buttonColor,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Container(
             margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
             width: size.width,
             decoration: BoxDecoration(
              color: buttonColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
             ), 
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    Icon(Icons.email,color: Colors.white,),
                     SizedBox(width: 10,),
                    Text('SIGN UP WITH EMAIL',style: TextStyle(color: Colors.white),),
                     SizedBox(width: 10,),
                 ],
               ),
             ),
            ),
            Container(
             margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
             width: size.width,
             decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
             ), 
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    Icon(Icons.apple,color: Colors.white,),
                     SizedBox(width: 10,),
                    Text('SIGN UP WITH APPLE',style: TextStyle(color: Colors.white),),
                     SizedBox(width: 10,),
                 ],
               ),
             ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
               margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
               width: size.width,
               decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
               ), 
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Icon(Icons.g_mobiledata,color: Colors.white,size: 28,),
                       SizedBox(width: 10,),
                      Text('SIGN UP WITH GOOGLE',style: TextStyle(color: Colors.white),),
                       SizedBox(width: 10,),
                   ],
                 ),
               ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              // width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "  ,style: TextStyle(fontSize: 12,color: Colors.black),),
                  InkWell(
                    onTap: (){
                      // showLoginModalSheet(context,size);
                      showLoginModalSheet(context,size);
                    },
                    child: Text('Log In',style: TextStyle(color: greenColor,decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.bold))),

                ],
              ),
            ),
            SizedBox(height: 20,)

          ],
        ),
      );
    },
  );
}



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: size.height*0.7,
                  width: size.width,
                  color: backgroundColor,
                ),
                Container(
                  height: size.height*0.3,
                  width: size.width,
                  color: greenColor,
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: 30,
            left: 30,
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios_new,size: 16,)),
                  Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),),
                    elevation: 10,
                    child: Container(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                        child: Text('Skip',style: TextStyle(color: Colors.black),),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 65,
            child: Center(
              child: Container(
                height: 325,
                width: size.width,
                decoration: BoxDecoration(
                ),
                child: Image.asset('assets/images/login/phone_background.png',),
              ),
            ),
          ),
          
          Positioned(
            bottom: 20,
            right:20,
            left:20,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                height: 250,
                width: size.width*0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15,),
                ),
                margin: EdgeInsets.symmetric(vertical: 30,),
                child: Column(
                  children: [
                    // SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20,),
                            border: Border.all(color: buttonColor),
                            color: Colors.white
                            ),
                          ),
                        SizedBox(width: 5,),
                        Container(
                          height: 10,
                          width: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              greenColor,
                              buttonColor,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15,),
                          ),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                      // Text('Meet Jarvix',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                      child: RichText(
                        text: TextSpan(
                          text: 'Live ',
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Dialog',
                              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: buttonColor),
                            )
                          ]
                        ),
                        ) 
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 35,vertical: 12),
                      // child: Text('The AI-powered GPT-3 search and content creation app that gives you accurate, ad-free results instantly.',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Get the perfect results every time with Jarvis dialogue-based editing and live feedback feature.',
                            style: TextStyle(fontSize: 15,color: Colors.black),
                          ),
                          ),
                      ) 
                    ),
                    GestureDetector(
                      onTap: () {
                        showSignUpModalSheet(context,size);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 15).copyWith(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15,),
                          color: buttonColor,
                        ),
                        width: size.width,
                        child: Row(
                          children: [
                            SizedBox(width: 55,),
                            Center(child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                              child: Text('GET STARTED',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),),
                            ),
                            Icon(Icons.arrow_right_alt_outlined,color: Colors.white,size: 26,)
                          ],
                        ),
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      // width: size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an Account ? ',style: TextStyle(fontSize: 12,color: Colors.black),),
                          InkWell(
                            onTap: (){
                               showLoginModalSheet(context,size);
                            },
                            child: Text('Log In',style: TextStyle(color: greenColor,decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.bold))),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}