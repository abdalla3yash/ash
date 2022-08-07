import 'package:ayash/configs/configs.dart';
import 'package:ayash/utils/about_utils.dart';
import 'package:ayash/utils/utils.dart';
import 'package:ayash/widget/custom_text_heading.dart';
import 'package:flutter/material.dart';
import 'package:ayash/constants.dart';
import 'package:ayash/widget/about_me_data.dart';
import 'package:ayash/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Me',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Get to know me :)',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.aboutphoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Who am I?",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
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
          Row(
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: kTools2
                .map((e) => ToolTechWidget(
                      techName: e,
                    ))
                .toList(),
          ),
          Space.y!,
          const Divider(),
          Space.y!,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutMeData(
                    data: "Name",
                    information: "Abdalla Ayash",
                  ),
                  AboutMeData(
                    data: "Age",
                    information: "24",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutMeData(
                    data: "Email",
                    information: "abdo3yash@gmail.com",
                  ),
                  AboutMeData(
                    data: "From",
                    information: "Cairo, Egypt",
                  ),
                ],
              ),
            ],
          ),
          Space.y1!,
        ],
      ),
    );
  }
}
