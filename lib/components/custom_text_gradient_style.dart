import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientText extends StatelessWidget {
  final String text;
  final Color decorationColor;
  final Gradient gradient;

  CustomGradientText({
    required this.text,
    required this.decorationColor,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          color: Colors.white, // This color will be overridden by the gradient
          decoration: TextDecoration.underline,
          decorationColor: decorationColor,
          decorationThickness: 3,
          decorationStyle: TextDecorationStyle.solid,
        ),
      ),
    );
  }
}
