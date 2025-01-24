import 'package:assignment_jit/base/controller/bottom_nav_controller.dart';
import 'package:assignment_jit/base/res/styles/app_colors.dart';
import 'package:assignment_jit/screen/setting_screen.dart';
import 'package:assignment_jit/screen/trade/trade_screen.dart';
import 'package:assignment_jit/screen/video_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screen/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  final appScreens = [
    const HomeScreen(),
    const VideoPage(),
    const TradeScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        // body: appScreens[controller.selectedIndex.value],
        body: appScreens[2],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            backgroundColor: Colors.white,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            unselectedItemColor: const Color(0xFF526400),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  height: 32,
                  width: 32,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/video.png',
                  height: 32,
                  width: 32,
                ),
                label: "Video Page",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/trade.png',
                  height: 32,
                  width: 32,
                ),
                label: "Trade",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/setting.png',
                  height: 32,
                  width: 32,
                ),
                label: "Setting",
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xFF33D49D),
          onPressed: () {
            print("Scan Here");
          },
          child: Image.asset('assets/icons/scan.png',height: 24,width: 24,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}
