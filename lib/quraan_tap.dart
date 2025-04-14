import 'package:flutter/material.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/common/app_colors.dart';

class QuraanTap extends StatelessWidget {
  const QuraanTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAsset.homeBackground,
          width: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColors.blackColor.withOpacity(.65),
                AppColors.blackColor
              ])),
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
            ),TextField()
          ],
        )
      ],
    );
  }
}
