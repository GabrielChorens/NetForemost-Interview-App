import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_flutter/src/core/ui/colors.dart';
import 'package:interview_flutter/src/core/ui/foremost_icons.dart';
import 'package:interview_flutter/src/core/ui/widgets/foremost_app_bar.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    const iconSize = 28.0;
    const selectedIconSize = 30.0;
    const selectedIconColor = AppColors.blue;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: ForemostAppbar(context: context),
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        surfaceTintColor: Colors.grey.withOpacity(0.5),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        destinations: const [
          NavigationDestination(
            icon: Icon(ForemostIcons.home, size: iconSize),
            selectedIcon: Icon(
              ForemostIcons.home,
              color: selectedIconColor,
              size: selectedIconSize,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(ForemostIcons.location_on, size: iconSize),
            selectedIcon: Icon(
              ForemostIcons.location_on,
              color: selectedIconColor,
              size: selectedIconSize,
            ),
            label: 'Forecasts',
          ),
          NavigationDestination(
            icon: Icon(ForemostIcons.person, size: iconSize),
            selectedIcon: Icon(
              ForemostIcons.person,
              color: selectedIconColor,
              size: selectedIconSize,
            ),
            label: 'User',
          ),
        ],
        onDestinationSelected: (index) {
          if (navigationShell.currentIndex == index) return;
          navigationShell.goBranch(
            index,
          );
        },
      ),
    );
  }
}
