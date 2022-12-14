import 'package:flutter/material.dart';

//burda kendi IP adresiniz olcak
//String uri = 'http://<IP>:3000';
//irfan 192.168.0.34
//Elif 192.168.1.93
//Beyza 192.168.1.49
// serra: 192.169.1.72
String uri = 'http://localhost:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 249, 137, 17),
      Color.fromARGB(255, 249, 137, 17),
    ],
    stops: [0.5, 1.0],
  );
  static const whiteGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 255, 255),
      Color.fromARGB(255, 255, 255, 255),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = const Color.fromARGB(255, 249, 137, 17);
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image':
          'https://res.cloudinary.com/dpnhaucpu/image/upload/v1672056933/xcyvgzz4ztubbfwcatzd.jpg',
    },
    {
      'title': 'Essentials',
      'image':
          'https://res.cloudinary.com/dpnhaucpu/image/upload/v1672056933/ijeajvsmw6wk72unszse.jpg',
    },
    {
      'title': 'Appliances',
      'image':
          'https://res.cloudinary.com/dpnhaucpu/image/upload/v1672056933/pshvevcjrstadtaqjso5.jpg',
    },
    {
      'title': 'Hobies',
      'image':
          'https://res.cloudinary.com/dpnhaucpu/image/upload/v1672056933/w6ccprdhlgeunhrejlgj.jpg',
    },
    {
      'title': 'Fashion',
      'image':
          'https://res.cloudinary.com/dpnhaucpu/image/upload/v1672056933/jo0zmddwfcasoc9ijuss.jpg',
    },
    {
      'title': 'Electronics',
      'image':
          'https://res.cloudinary.com/dpnhaucpu/image/upload/v1672056933/lzijtbctydsrwoywlo8j.jpg',
    },
  ];
}
