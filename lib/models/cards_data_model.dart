import 'package:flutter/cupertino.dart';

class CardDataModel {
  final String title;
  final String image;
  final String subtitle;
  final String description;



  CardDataModel({
    required this.title,
    required this.image,
    required this.subtitle,
    required this.description,
  });


  static List<CardDataModel> newestEdition = [
       CardDataModel(title: 'Video Resource',  subtitle: 'Classification of enzymes',
           description: 'Memorizing the fact that,Memorizing the fact that',image: 'assets/images/new1.png'),

    CardDataModel(title: 'Video Resource',  subtitle: 'Classification of enzymes',
        description: 'Memorizing the fact that',image: 'assets/images/new1.png'),

    CardDataModel(title: 'Video Resource',  subtitle: 'Classification of enzymes',
        description: 'Memorizing the fact that,Memorizing the fact that',image: 'assets/images/new1.png'),

    CardDataModel(title: 'Video Resource',  subtitle: 'Classification of enzymes',
        description: 'Memorizing the fact that',image: 'assets/images/new1.png'),


  ];

  static List<CardDataModel> essentialStuff = [
    CardDataModel(title: 'Download Resource',  subtitle: 'Aku Entry Test Syllabus',
        description: 'For 2023',image: 'assets/images/new1.png'),

    CardDataModel(title: 'Download Resource',  subtitle: 'Classification of enzymes',
        description: 'For PM&DC',image: 'assets/images/new1.png'),



  ];


  static List<CardDataModel> elevenHourPrep = [
    CardDataModel(title: 'THERMODYNAMICS',  subtitle: 'SHORTLISTING',
        description: 'For 2023',image: 'assets/images/elevenhour.png'),

    CardDataModel(title: 'THERMODYNAMICS',  subtitle: 'SHORTLISTING',
        description: 'For PM&DC',image: 'assets/images/elevenhour.png'),



  ];



  static List<CardDataModel> topicalGuides = [
    CardDataModel(title: 'THERMODYNAMICS',  subtitle: 'CELL STRUCTURE \nAND FUNCTION',
        description: 'BIOLOGY - PUNJAB BOARD',image: 'assets/images/topicalguides.png'),

    CardDataModel(title: 'THERMODYNAMICS',  subtitle: 's AND p \nBLOCK ELEMENTS',
        description: 'CHEMISTRY - SINDH BOARD',image: 'assets/images/topicalguides.png'),


  ];


  static List<CardDataModel> nemonicsData = [
    CardDataModel(title: 'Nemonics',  subtitle: 'RNA and DNA \nViruses',
        description: 'Learn all the RNA \nand DNA Viruses \nwith just a simple trick!',image: 'assets/images/lastimage.png'),

    CardDataModel(title: 'Nemonics',  subtitle: 'Pro-Glucose Hormones',
        description: 'Learn all the classes \nof enzymes \nwith just a simple word!',image: 'assets/images/lastimage.png'),



  ];




}
