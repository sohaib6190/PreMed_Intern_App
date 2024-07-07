import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSearchField extends StatelessWidget {
  final String lname;




  CustomSearchField({
    required this.lname,

  });




  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350.w,
        height: 50.h,
        child: TextField(
          style: TextStyle(fontSize: 20.sp,color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icons.search!= null ? Icon(Icons.search, size: 20.sp,color: Colors.blue,) : null,
            suffixIcon:  Icons.crop!= null ? Icon(Icons.crop, size: 20.sp,color: Colors.red,) : null,
            suffixStyle: TextStyle(fontSize: 20.sp),
            contentPadding: EdgeInsets.only(left: 10),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide( color: Colors.white10),
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: lname,
            filled: true,
            fillColor: Colors.white,

            labelStyle: TextStyle(fontSize: 15.sp,color: Color(0xff202244)),
          ),
        ),
      ),
    ) ;
  }
}
