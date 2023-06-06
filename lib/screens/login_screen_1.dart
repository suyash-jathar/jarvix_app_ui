
import 'package:flutter/material.dart';
import 'package:jarvix_application_1/screens/login_screen_2.dart';
import 'package:jarvix_application_1/screens/new_chat_scren.dart';
import 'package:jarvix_application_1/utils/const.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});
    @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  void showLoginModalSheet(BuildContext context,Size size) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10,),
            const Text('Welcome back!',style: TextStyle(color: buttonColor,fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            Container(
             margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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
                 children: const [
                    Icon(Icons.email,color: Colors.white,),
                     SizedBox(width: 10,),
                    Text('SIGN IN WITH EMAIL',style: TextStyle(color: Colors.white),),
                     SizedBox(width: 10,),
                 ],
               ),
             ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const NewChat()));
              },
              child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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
                   children: const [
                      Icon(Icons.apple,color: Colors.white,),
                       SizedBox(width: 10,),
                      Text('SIGN IN WITH APPLE',style: TextStyle(color: Colors.white),),
                       SizedBox(width: 10,),
                   ],
                 ),
               ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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
                   children: const [
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
              margin: const EdgeInsets.symmetric(vertical: 5),
              // width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "  ,style: TextStyle(fontSize: 12,color: Colors.black),),
                  InkWell(
                    onTap: (){
                      // showLoginModalSheet(context,size);
                      showSignUpModalSheet(context,size);
                    },
                    child: const Text('Get Started',style: TextStyle(color: greenColor,decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.bold))),

                ],
              ),
            ),
            const SizedBox(height: 20,)

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
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10,),
            const Text('Welcome to Jarvix GPT-3!',style: TextStyle(color: buttonColor,fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            Container(
             margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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
                 children: const [
                    Icon(Icons.email,color: Colors.white,),
                     SizedBox(width: 10,),
                    Text('SIGN UP WITH EMAIL',style: TextStyle(color: Colors.white),),
                     SizedBox(width: 10,),
                 ],
               ),
             ),
            ),
            Container(
             margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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
                 children: const [
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
               margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
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
                   children: const [
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
              margin: const EdgeInsets.symmetric(vertical: 5),
              // width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "  ,style: TextStyle(fontSize: 12,color: Colors.black),),
                  InkWell(
                    onTap: (){
                      // showLoginModalSheet(context,size);
                      showLoginModalSheet(context,size);
                    },
                    child: const Text('Log In',style: TextStyle(color: greenColor,decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.bold))),

                ],
              ),
            ),
            const SizedBox(height: 20,)

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
          SizedBox(
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
            top: 60,
            child: Center(
              child: Container(
                height: 300,
                width: size.width,
                decoration: const BoxDecoration(
                ),
                child: Image.asset('assets/images/login/jarvix.png',),
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: 30,
            child: Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),),
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25,),
                ),
                child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                  child: Text('Skip',style: TextStyle(color: Colors.black),),
                ),
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
                margin: const EdgeInsets.symmetric(vertical: 30,),
                child: Column(
                  children: [
                    // SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              greenColor,
                              buttonColor,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15,),
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20,),
                            border: Border.all(color: buttonColor),
                            color: Colors.white
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                      // Text('Meet Jarvix',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Meet ',
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Jarvix',
                              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: buttonColor),
                            )
                          ]
                        ),
                        ) 
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 12),
                      // child: Text('The AI-powered GPT-3 search and content creation app that gives you accurate, ad-free results instantly.',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: 'The AI-powered GPT-3 ',
                            style: TextStyle(fontSize: 15,color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'search ',
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: buttonColor),
                              ),
                              TextSpan(
                                text: 'and ',
                                style: TextStyle(fontSize: 15,color: Colors.black),
                              ),
                              TextSpan(
                                text: 'content creation',
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: buttonColor),
                              ),
                              TextSpan(
                                text: ' app that gives you accurate, ad-free results instantly.',
                                style: TextStyle(fontSize: 15,color: Colors.black),
                              ),
                            ]
                          ),
                          ),
                      ) 
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginScreen2()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 15).copyWith(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15,),
                          color: buttonColor,
                        ),
                        width: size.width,
                        child: Row(
                          children: const [
                            SizedBox(width: 80,),
                            Center(child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                              child: Text('NEXT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),),
                            ),
                            SizedBox(width: 20,),
                            Icon(Icons.arrow_right_alt_outlined,color: Colors.white,size: 26,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      // width: size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an Account ? ',style: TextStyle(fontSize: 12,color: Colors.black),),
                          InkWell(
                            onTap: (){
                               showLoginModalSheet(context,size);
                            },
                            child: const Text('Log In',style: TextStyle(color: greenColor,decoration: TextDecoration.underline,fontSize: 12,fontWeight: FontWeight.bold))),

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