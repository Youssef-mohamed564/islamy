import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/common/app_colors.dart';
import 'package:islamy/hadeeth_tap.dart';
import 'package:islamy/quraan_tap.dart';
import 'package:islamy/radio_tap.dart';
import 'package:islamy/sebha_tap.dart';
import 'package:islamy/time_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/quraan';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> taps = [
    QuraanTap(),
    HadeethTap(),
    SebhaTap(),
    RadioTap(),
    TimeTap()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          taps[index],
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Image.asset(
              AppAsset.islamyHeader,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                  activeIcon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.blackColor.withOpacity(.6)),
                    child: SvgPicture.asset(
                      AppAsset.quraanIcon,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  icon: SvgPicture.asset(
                    AppAsset.quraanIcon,
                  ),
                  label: 'Quraan'),
              BottomNavigationBarItem(
                  activeIcon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.blackColor.withOpacity(.6)),
                    child: SvgPicture.asset(
                      AppAsset.hadeethIcon,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  icon: SvgPicture.asset(
                    AppAsset.hadeethIcon,
                  ),
                  label: 'Hadeeth'),
              BottomNavigationBarItem(
                  activeIcon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.blackColor.withOpacity(.6)),
                    child: SvgPicture.asset(
                      AppAsset.sebhaIcon,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  icon: SvgPicture.asset(
                    AppAsset.sebhaIcon,
                  ),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  activeIcon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.blackColor.withOpacity(.6)),
                    child: SvgPicture.asset(
                      AppAsset.radioIcon,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  icon: SvgPicture.asset(
                    AppAsset.radioIcon,
                  ),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  activeIcon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.blackColor.withOpacity(.6)),
                    child: SvgPicture.asset(
                      AppAsset.vectorIcon,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  icon: SvgPicture.asset(
                    AppAsset.vectorIcon,
                  ),
                  label: 'Time')
            ]),
      ),
    );
  }
}
