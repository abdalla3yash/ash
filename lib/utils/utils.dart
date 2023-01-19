import 'package:flutter/material.dart';
import 'package:ayash/sections/about/about.dart';
import 'package:ayash/sections/contact/contact.dart';
import 'package:ayash/sections/home/home.dart';
import 'package:ayash/sections/portfolio/portfolio.dart';
import 'package:ayash/sections/services/services.dart';
import 'package:ayash/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String aboutphoto = 'assets/about.png';
  static const String homephoto = 'assets/home.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String it = 'assets/services/it.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    // "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/344/whatsapp--v1.png"
  ];

  static const List<String> socialLinks = [
    "https://instagram.com/a_3yash",
    // "https://twitter.com/3yashh",
    "https://linkedin.com/in/abdalla-ayash/",
    "https://github.com/abdalla3yash",
    "https://wa.me/+201091032414"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1FHIG6QHzQQClokboe0RRuzpdpDpfeTsq/view?usp=sharing';

  static const String gitHub = 'https://github.com/abdalla3yash';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
