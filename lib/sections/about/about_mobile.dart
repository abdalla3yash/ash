import 'package:flutter/foundation.dart';
import 'package:ayash/configs/configs.dart';
import 'package:ayash/utils/about_utils.dart';
import 'package:ayash/utils/utils.dart';
import 'package:ayash/widget/custom_text_heading.dart';
import 'package:lottie/lottie.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:ayash/constants.dart';
import 'package:ayash/widget/about_me_data.dart';
import 'package:ayash/widget/community_button.dart';
import 'package:ayash/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.aboutphoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          const Divider(),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          Center(
            child: Row(
              children: kTools2
                  .map((e) => ToolTechWidget(
                        techName: e,
                      ))
                  .toList(),
            ),
          ),
          Space.y!,
          const Divider(),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "Abdalla Ayash",
          ),
          const AboutMeData(
            data: "Email",
            information: "abdo3yash@gmail.com",
          ),
          Space.y!,
          OutlinedButton(
              child: const Text("Resume"),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              }),
          Space.y!,
        ],
      ),
    );
  }
}
