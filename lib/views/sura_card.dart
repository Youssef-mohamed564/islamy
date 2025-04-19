import 'package:flutter/material.dart';
import 'package:islamy/common/app_colors.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/models/sura_model.dart';
import 'package:islamy/views/sura_details.dart';
import 'package:islamy/views/sura_tile.dart';
class SuraCard extends StatelessWidget {
  const SuraCard({super.key, required this.suraModel, required this.onSuraClicked, });
final SuraModel suraModel;
  final OnClicked onSuraClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context)
              .pushNamed(SuraDetails.routeName, arguments: suraModel);
          onSuraClicked(suraModel.suraCount);

        },
        child: Container(
            height: MediaQuery.of(context).size.height*0.22,
            width: MediaQuery.of(context).size.width*.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor.withOpacity(.85)),
            child: Stack(
              children: [
                 Positioned(
                    top: 8,
                    left: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(suraModel.enName,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700))),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(suraModel.arName,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700))),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('${suraModel.versesCount} verses',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700))),
                      ],
                    )),
                Positioned(
                    top: 8,
                    right: 0,
                    child: Image.asset(
                      AppAsset.SuraCardLogo,
                      height: 130,
                      width: 140,
                    ))
              ],
            )),
      ),
    );
  }
}
