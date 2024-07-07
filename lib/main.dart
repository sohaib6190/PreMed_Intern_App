
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premed_intern_app/bottomnavbar/bottom_nav_bar.dart';
import 'package:premed_intern_app/view/home_screen.dart';

import 'constraints/styling_constraints.dart';




void main()  {

  runApp( MyApp());

}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(

          title: 'internapp',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: GoogleFonts.rubikTextTheme(
              Theme.of(context).textTheme,
            ),
            scaffoldBackgroundColor: background_color,
            useMaterial3: true,
          ),
          home: MyBottomNavBar(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container()
    );
  }
}
