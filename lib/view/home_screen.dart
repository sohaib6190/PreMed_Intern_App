// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';
//
// import '../constraints/styling_constraints.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//       ),
//
//       body: Column(
//         children: [
//
//           Text(
//             "PreMed",
//             style: TextStyle(
//               fontSize: 15.sp,
//               fontWeight: FontWeight.w900,
//               foreground: Paint()..shader = textGradient,
//             ),
//           ),
//
//             Gap(10),
//
//             Container(
//               width: 164.w,
//               height: 41.w,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/vault.png'),
//                   fit: BoxFit.fill
//                 )
//               ),
//             )
//
//         ],
//       ),
//     );
//   }
// }
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premed_intern_app/components/custom_list_cards.dart';
import 'package:premed_intern_app/components/custom_searchfield.dart';
import 'package:premed_intern_app/components/custom_small_cards.dart';
import 'package:premed_intern_app/constraints/styling_constraints.dart';
import 'package:premed_intern_app/models/cards_data_model.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class HomeScreen extends StatelessWidget {


  var smallcarddata = [
    {
        'name' :'Topical Guides',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      ),


    },
    {
      'name' :'Topical Guides',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      ),


    },

    {
      'name' :'Study Notes',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],

      )

    },


    {
      'name' :'Study Notes',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      )

    },

    {
      'name' :'Soha',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      )

    },

    {
      'name' :'Study Notes',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      )

    },


    {
      'name' :'Study Notes',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      )

    },



    {
      'name' :'Study Notes',
      'gradient':LinearGradient(
        colors: [Colors.pink,Colors.blue],
      )

    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                RichText(
                  text: TextSpan(
                    text: 'Pre',
                    style: TextStyle(
                        color: Color(0xff3533B0),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        decoration:TextDecoration.underline,
                        decorationColor: Colors.black, // optional
                        decorationThickness: 3,
                        decorationStyle: TextDecorationStyle.solid
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' M',
                        style: TextStyle(
                          color: Color(0xffED5F6A),
                          fontSize: 18.sp,
                            decoration:TextDecoration.underline,
                            decorationColor: Color(0xffED5F6A), // optional
                            decorationThickness: 3,
                            decorationStyle: TextDecorationStyle.solid
                        ),
                      ),

                      TextSpan(
                        text: ' ed',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                            decoration:TextDecoration.underline,
                            decorationColor: Colors.black, // optional
                            decorationThickness: 3,
                            decorationStyle: TextDecorationStyle.solid
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 10), // SizedBox for spacing

                Container(
                  width: 164.w,
                  height: 41.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/vault.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

            Gap(10),

            Text(
              'All The Resources Any Pre Medical Student Could Ever Need',
              style: body_style1
            ),


                Gap(20),

                CustomSearchField(lname: 'Search'),

               SizedBox(
                 height: 30.h,
               ),


            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                // First row of containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: smallcarddata
                      .take(3)
                      .map((item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomSmallCards(
                                          gradient: item['gradient'] as LinearGradient,
                                          name: item['name'] as String,
                                        ),
                      ))
                      .toList(),
                ),
                // Second row of containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: smallcarddata
                      .skip(3)
                      .take(3)
                      .map((item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomSmallCards(
                                          gradient: item['gradient'] as LinearGradient,
                                          name: item['name'] as String,
                                        ),
                      ))
                      .toList(),
                ),


              ],

            ),

                SizedBox(
                  height: 25.h,
                ),

                GradientText(
                  'Newest Additions',
                  style: heading_style,
                  colors: [
                    Color(0xFFDE7F20),
                    Color(0xFF0137F7),
                    Color(0xFF00AEF8),
                  ],
                ),





                Text(
                    'Latest additions to PreMed’s treasury!',
                    style: body_style1
                ),


                SizedBox(
                  height: 25.h,
                ),

                Container(
                  height: 200.h,
                  width: 500.w,

                  child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemCount: CardDataModel.newestEdition.length,
                    itemBuilder: (context, index) {
                      final newestEdition =  CardDataModel.newestEdition[index];
                      return SizedBox(
                        height: 200.h,
                        width: 300.w,
                        child: CustomCardList(


                          child: ListTile(
                            leading: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage(newestEdition.image),
                                    fit: BoxFit.fill,

                                  )
                              ),

                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(newestEdition.title,style: body_style4,),
                            ),
                            subtitle: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(newestEdition.subtitle,style: TextStyle(fontSize: 17.sp,decoration:TextDecoration.underline,
                                      decorationColor: Colors.black, // optional
                                      decorationThickness: 3,
                                      fontWeight: FontWeight.bold,
                                      decorationStyle: TextDecorationStyle.solid)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(newestEdition.description,style: TextStyle(fontSize: 10.sp,decoration:TextDecoration.underline,
                                      decorationColor: Colors.black, // optional
                                      decorationThickness: 3,
                                      fontWeight: FontWeight.bold,
                                      decorationStyle: TextDecorationStyle.solid)),
                                ),




                              ],
                            ),

                          ),
                        ),
                      );
                    },
                  ),
                ),


                SizedBox(
                  height: 25.h,
                ),

                RichText(
                  text: TextSpan(
                    text: 'Essential',
                    style: TextStyle(
                        color: Color(0xff3533B0),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Stuff',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                        ),
                      ),

                    ],
                  ),
                ),

                Text(
                    'Syllabi, Schemes, etc., and everything a student just needs.',
                    style: body_style1
                ),


                SizedBox(
                  height: 25.h,
                ),


                Container(
                  height: 200.h,
                  width: 500.w,

                  child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemCount: CardDataModel.essentialStuff.length,
                    itemBuilder: (context, index) {
                      final ess_Stuff =  CardDataModel.essentialStuff[index];
                      return SizedBox(
                        height: 200.h,
                        width: 300.w,
                        child: CustomCardList(

                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text(ess_Stuff.title,style: body_style4,),
                                Text(ess_Stuff.subtitle,style: body_style3,),
                                Text(ess_Stuff.description,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Color(0xff4B4B4B)))
                              ],
                            ),
                          )
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 25.h,
                ),

                RichText(
                  text: TextSpan(
                    text: 'The',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' 11th Hour',
                        style: TextStyle(
                          color: Color(0xffEC5863),
                          fontSize: 18.sp,
                        ),
                      ),
                      TextSpan(
                        text: ' Prep',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp
                        ),
                      ),
                    ],
                  ),
                ),



                RichText(
                  text: TextSpan(
                    text: 'DYNAMIC',
                    style: TextStyle(
                        color: Color(0xffEC5863),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' FSc-II EXAMS - PUNJAB 2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 25.h,
                ),


                Container(
                  height: 200.h,
                  width: 500.w,

                  child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemCount: CardDataModel.elevenHourPrep.length,
                    itemBuilder: (context, index) {
                      final eleven_Hour =  CardDataModel.elevenHourPrep[index];
                      return SizedBox(
                        height: 200.h,
                        width: 300.w,
                        child: CustomCardList(


                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  eleven_Hour.image, // Assuming image is an asset path
                                  width: 120.w, // Adjust size as needed
                                  height: 200.h,
                                  fit: BoxFit.cover, // Adjust image fitting as needed
                                ),
                              ),

                              Column(

                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                   Text(eleven_Hour.title,style: body_style6,),
                                  Text(eleven_Hour.subtitle)
                                ],
                              )
                            ],
                          )
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 25.h,
                ),

                Text(
                  "Topical Guides",
                  style: heading_style,
                ),

                Text(
                    'Toppers’ Insights to every topic from every board of Pakistan! ',
                    style: body_style1
                ),

                SizedBox(
                  height: 25.h,
                ),


                Container(
                  height: 200.h,
                  width: 500.w,

                  child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemCount: CardDataModel.topicalGuides.length,
                    itemBuilder: (context, index) {
                      final topical_Guides =  CardDataModel.topicalGuides[index];
                      return SizedBox(
                        height: 200.h,
                        width: 300.w,
                        child: CustomCardList(


                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    topical_Guides.image, // Assuming image is an asset path
                                    width: 100.w, // Adjust size as needed
                                    height: 200.h,
                                    fit: BoxFit.cover, // Adjust image fitting as needed
                                  ),
                                ),

                                Column(

                                  children: [
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(topical_Guides.subtitle,style: body_style6,),
                                    Text(topical_Guides.description,style: body_style4,)
                                  ],
                                )
                              ],
                            )
                        ),
                      );
                    },
                  ),
                ),


                SizedBox(
                  height: 25.h,
                ),


              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                     image: AssetImage('assets/images/last.png')
                        )
              ),
      ),
                    Text('nemonics',style: TextStyle(color: Color(0xffEC5863),fontSize: 15.sp,fontWeight: FontWeight.bold)
                  )
                    ],
              ),

                Text(
                    'All the mnemonics you need. No more mindless repetition! ',
                    style: body_style1
                ),

                SizedBox(
                  height: 25.h,
                ),



                Container(
                  height: 200.h,
                  width: 500.w,

                  child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemCount: CardDataModel.nemonicsData.length,
                    itemBuilder: (context, index) {
                      final nemonics_Data =  CardDataModel.nemonicsData[index];
                      return SizedBox(
                        height: 200.h,
                        width: 300.w,
                        child: CustomCardList(


                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    nemonics_Data.image,
                                    width: 120.w,
                                    height: 200.h,
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Text(nemonics_Data.title,),
                                    Text(nemonics_Data.subtitle,style: body_style6,),
                                    Text(nemonics_Data.description,style: body_style4,)
                                  ],
                                )
                              ],
                            )
                        ),
                      );
                    },
                  ),
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
