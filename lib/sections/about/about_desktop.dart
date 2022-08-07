import 'package:flutter/material.dart';
import 'package:ayash/configs/configs.dart';
import 'package:ayash/constants.dart';
import 'package:ayash/utils/about_utils.dart';
import 'package:ayash/utils/utils.dart';
import 'package:ayash/widget/about_me_data.dart';
import 'package:ayash/widget/custom_text_heading.dart';
import 'package:ayash/widget/tech_widget.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: width < 1000 ? height * 0.5 : height * 0.7,
                  height: width < 1000 ? height * 0.5 : height * 0.7,
                  child: Image.asset(
                    StaticUtils.aboutphoto,
                  ),
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Who am I?',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: kTools
                                .map((e) => ToolTechWidget(
                                      techName: e,
                                    ))
                                .toList(),
                          ),
                          Space.y!,
                          Row(
                            children: kTools2
                                .map((e) => ToolTechWidget(
                                      techName: e,
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                      Space.y!,
                      const Divider(),
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
                          const Spacer(),
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
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
