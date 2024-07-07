import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:premed_intern_app/constraints/styling_constraints.dart';

class CustomSmallCards extends StatelessWidget {
  final String name;
  final Gradient gradient;

  CustomSmallCards({
    required this.gradient,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.w,
        height: 34.h,
        decoration: BoxDecoration(
          color: Color(0xffFBF7F7),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            for (Color color in gradient.colors)
              BoxShadow(
                color: color.withOpacity(0.6),
                spreadRadius: 6,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
          ],
        ),
        child: Center(
          child: Text(
            name,
            style: body_style2,
          ),
        ),
      );
  }
}
