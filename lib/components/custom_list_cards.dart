import 'package:flutter/material.dart';

class CustomCardList extends StatelessWidget {


final Widget child;




CustomCardList({


  required this.child
});


  @override
  Widget build(BuildContext context) {
    return SizedBox(


      child: Card(
            elevation: 20,
           shadowColor: Colors.black,
            color: Colors.white,

        child: child




      ),
    );
  }
}
