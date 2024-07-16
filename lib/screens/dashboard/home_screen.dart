import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../profile/profile_screen.dart';
import '../recent/recent_screen.dart';
import '../search/search_screen.dart';
import 'components/my_app_bar.dart';
import 'controller/home_controller.dart';
import 'fragments/home_fragment.dart';

class HomeScreen extends StatelessWidget {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeFragment(),
      SearchScreen(title:"Search"),
      RecentScreen(title:"Recent"),
      ProfileScreen(title:"Profile"),
      // RecentScreen(isFromDashboard: true),
      // ProfileFragment(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        // icon: Image.asset(ic_home, width: 50, height: 50),
        icon: Icon(Icons.home_outlined, size: 25,),
        title: ("Home"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.secondaryBackgroundColor,
      ),
      PersistentBottomNavBarItem(
        // icon: Image.asset(ic_search, width: 24, height: 24),
        icon: Icon(Icons.search_outlined ,size: 25,),
        title: ("Search"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.secondaryBackgroundColor,
      ),
      PersistentBottomNavBarItem(
        // icon: Image.asset(ic_recent, width: 24, height: 24),
        icon: Icon(Icons.history_toggle_off_outlined),
        title: ("Recent"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.secondaryBackgroundColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person, size: 25,),
        title: ("Profile"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.secondaryBackgroundColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: PersistentTabView(
            context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: AppColors.backgroundColor, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset: true, // Default is true.
            stateManagement: true, // Default is true.
            navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight,
            hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'true' to hide the nav bar when keyboard is onscreen.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
            onItemSelected: (index) {
              controller.currentIndex.value = index;
              print("Selected Index: $index");
            },
          ),
        );
      },
    );
  }
}
