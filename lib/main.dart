import './screens/blogs.dart';
import './screens/resume.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color barcolor= Color(0xff7ba4a8);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:  Color(0xff7ba4a8),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Blogs(),
      
    routes: {
      Blogs.routeName: (ctx) => Blogs(),
      Resume.routeName:(ctx) => Resume(),
    }
    );



    
  }
  
}



