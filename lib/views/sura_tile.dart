import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/models/sura_model.dart';

class SuraTile extends StatelessWidget {
   SuraTile({super.key});
SuraModel suraModel=SuraModel(arName: 'الفاتحة', enName: 'El-Fatiha', versesCount: 7,suraCount: 1);
  @override
  Widget build(BuildContext context) {
    return ListTile(dense: true,contentPadding: EdgeInsets.all(0),
      leading: SizedBox(width: 48,
        child: Stack(children: [
          SvgPicture.asset(AppAsset.verseIcon),
          Center(
              child: Text(
                (suraModel.suraCount??'').toString() ,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ))
        ]),
      ),title: Text(
    suraModel.enName,
    style: TextStyle(
    color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700) ,
    ),subtitle:Text(
      '${suraModel.versesCount} verses',
      style: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700) ,
    ), trailing: Text(
      suraModel.arName,
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700) ,
    ),
    );
  }
}
