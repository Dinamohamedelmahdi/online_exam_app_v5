import 'package:flutter/material.dart';
import 'package:online_exam_app_v5/presentation/profile_default_Screen/result/result_screen.dart';
import 'package:online_exam_app_v5/presentation/profile_default_Screen/user_profile/user_profile_screen.dart';
import 'package:online_exam_app_v5/presentation/utilities/user_with_token.dart';

import '../../domain/models/user.dart';
import 'BottomNavItem.dart';
import 'explore/explore_screen.dart';

class ProfileDefaultScreen extends StatefulWidget {
   ProfileDefaultScreen({required this.userWithToken,super.key});

  static const String routeName = "ProfileDefaultScreen";

  UserWithToken? userWithToken;


  @override
  State<ProfileDefaultScreen> createState() => _ProfileDefaultScreenState();
}

class _ProfileDefaultScreenState extends State<ProfileDefaultScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavItem("Explore", 'home_Icon.png',selectedIndex==0),
          BottomNavItem("Result", 'result_icon.png',selectedIndex==1),
          BottomNavItem("Profile", 'profile_icon.png',selectedIndex==2),
        ],
      ),

      );

  }

  var tabs = [ExploreScreen(), ResultScreen(),UserProfileScreen()];
}

