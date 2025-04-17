import 'package:flutter/material.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/common/app_colors.dart';
import 'package:islamy/views/sura_card.dart';
import 'package:islamy/views/sura_tile.dart';
import '../views/custom_text_field.dart';
import 'package:islamy/models/sura_model.dart';

class QuraanTap extends StatelessWidget {
   QuraanTap({super.key, required this.suraModel});

  final SuraModel suraModel;
List<SuraModel> suras =List.generate(15, (index)=>SuraModel(arName: 'arName$index', enName: 'enName$index', versesCount: 10));
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
              height: MediaQuery.of(context).size.height * .18,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: CustomTextField(
                      hintText: 'Sura Name..',
                      prefixIcon: AppAsset.quraanIcon,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .57,
                    width: double.infinity,
                    child: ListView(
                      children: [
                        const Text(
                          'Most Recently ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                            height: 160,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => SuraCard(
                                      suraModel: SuraModel(
                                          enName: suraModel.enName,
                                          arName: suraModel.arName,
                                          versesCount: suraModel.versesCount),
                                    ))),
                        const Text(
                          'Suras List',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .32,
                            child: ListView.separated(
                                separatorBuilder: (context, index) => Divider(
                                      endIndent: 36,
                                      indent: 36,
                                    ),
                                itemCount: 20,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => SuraTile()))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
