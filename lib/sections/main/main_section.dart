import 'package:ayash/animations/entrance_fader.dart';
import 'package:ayash/configs/app.dart';
import 'package:ayash/configs/configs.dart';
import 'package:ayash/provider/app_provider.dart';
import 'package:ayash/provider/drawer_provider.dart';
import 'package:ayash/provider/scroll_provider.dart';
import 'package:ayash/responsive/responsive.dart';
import 'package:ayash/utils/navbar_utils.dart';
import 'package:ayash/utils/utils.dart';
import 'package:ayash/widget/navbar_actions_button.dart';
import 'package:ayash/widget/navbar_logo.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:ayash/constants.dart';
part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
