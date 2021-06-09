import 'package:flutter/material.dart';
import 'package:todolist_app/screens/todo_list_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      theme: ThemeData(
       primarySwatch: Colors.amber
      ),
      home:  AnimatedSplashScreen(
        duration: 2000,
        splash: Center(
          child: Container(
            height: 400,
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //     height: 70,
                //     width: 70,
                //     child: Image.asset('assets/weight.png')),
                // SizedBox(width: 10,),
                Text(
                  "Todo List",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.amber,
                      fontFamily: 'Pacifico',
                      letterSpacing: 2.0
                  ),
                ),

              ],
            ),
          ),
        ),
        nextScreen: TodoListScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.scale,
        backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }
}

