import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ayash/configs/app_dimensions.dart';
import 'package:ayash/configs/app_theme.dart';
import 'package:ayash/configs/app_typography.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          CupertinoIcons.arrow_up_right_circle_fill,
          color: AppTheme.c!.primary,
          size: AppDimensions.normalize(6),
        ),
        Text(
          " $techName ",
          style: AppText.l1b,
        )
      ],
    );
  }
}
