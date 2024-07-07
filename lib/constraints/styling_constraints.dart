import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const background_color = Color(0xffFFF6FB);
var heading_style = TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold);
var heading_style1 = TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold);
var body_style = TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.black);

var body_style1 = TextStyle(fontSize: 17.sp,
    decoration:TextDecoration.underline,
  decorationColor: Colors.black, // optional
  decorationThickness: 3,
  decorationStyle: TextDecorationStyle.solid);



var body_style2= TextStyle(fontSize: 12.sp,decoration:TextDecoration.underline,
    decorationColor: Colors.black,
    decorationThickness: 3,
    decorationStyle: TextDecorationStyle.solid);

var body_style3= TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold);
var body_style6= TextStyle(fontSize: 12.sp,color: Colors.black,fontWeight: FontWeight.bold);
var body_style4= TextStyle(fontSize: 12.sp,color: Color(0xffA4A3A3));


final Shader textGradient = LinearGradient(
  colors: [Colors.black, Color(0xffEC5863)],
).createShader(Rect.fromLTWH(0.0, 0.0, 250.0, 60.0));