import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx/view/recent_counter.dart';
import 'package:get/get.dart';
import 'view/content_page.dart';
import 'view/my_detail_page.dart';
import 'view/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> MyHomePage()),
        GetPage(name: '/home', page: ()=>ContentPage()),
        GetPage(name: "/detail", page: ()=> DetailPage()),
        GetPage(name: "/recent", page: ()=> RecentContest())
      ],
    );
  }
}
