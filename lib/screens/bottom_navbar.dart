import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_languages/screens/home_screen.dart';

const Color inActiveIconColor = Color(0xFFB6B6B6);

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  static String routeName = "/";

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const HomeScreen(),
    // const FavoriteScreen(),
    const Center(
      child: Text("Transaction"),
    ),
    const Center(
      child: Text("Active Voucher"),
    ),
    const Center(
      child: Text("Article"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentSelectedIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.blue, // Set the background color of the BottomNavigationBar
          ),
          height: 80,
          child: BottomNavigationBar(
            onTap: updateCurrentIndex,
            currentIndex: currentSelectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/navbar/home.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/navbar/home.svg",
                ),
                label: "Home",
                backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/navbar/transaction.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/navbar/transaction.svg",
                ),
                backgroundColor: const Color(0xfff26522),
                label: "Transaction",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/navbar/voucher.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/navbar/voucher.svg",
                ),
                label: "Voucher",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/navbar/article.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/navbar/article.svg",
                ),
                label: "Article",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/navbar/profile.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/navbar/profile.svg",
                ),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
