import 'package:flutter/cupertino.dart';
import 'package:ayash/configs/app_dimensions.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 230
        : index == 2
            ? 230
            : index == 3
                ? 230
                : 265;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 300
        : index == 2
            ? 320
            : index == 3
                ? 280
                : 310;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
