import 'package:flutter/material.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/common/app_colors.dart';

class HadeethTap extends StatefulWidget {
   HadeethTap({super.key,  });
  List<String> hadeethContent=[];

  @override
  State<HadeethTap> createState() => _HadeethTapState();
}

class _HadeethTapState extends State<HadeethTap> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAsset.hadeethBackground),
        Column(
          children: [
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .3,
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .56,
              width: double.infinity,
              child: ListView.builder(itemCount: AppAsset.ahadeath.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .87,
                      child: Card(
                        color: AppColors.mainColor,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                AppAsset.hadeethCardBackground,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * .8,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * .45,
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  AppAsset.SuraDetailsfooter,
                                  color: AppColors.blackColor.withOpacity(.6),
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .8,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 14.0, right: 14, bottom: 40, top: 14),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppAsset.SuraDetailsHeader1,
                                        scale: 3,
                                        color: AppColors.blackColor,
                                      ),
                                      SizedBox(
                                        width:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .width * .25,
                                        child: Center(child: Text((index+1).toString(),style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),)),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Image.asset(
                                          AppAsset.SuraDetailsHeader2,
                                          scale: 3,
                                          color: AppColors.blackColor,
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                      child: SingleChildScrollView(
                                          child: Text(AppAsset.ahadeath[index],

                                            style: const TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                            textDirection: TextDirection.rtl,
                                          ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
              ),
            )
          ],
        )
      ],
    );
  }

}
