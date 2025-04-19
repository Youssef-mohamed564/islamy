import 'package:flutter/material.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/common/app_colors.dart';
import 'package:islamy/views/sura_card.dart';
import 'package:islamy/views/sura_tile.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import '../views/custom_text_field.dart';
import 'package:islamy/models/sura_model.dart';

class QuraanTap extends StatefulWidget {
  String? search;
  QuraanTap({super.key, this.suraModel, this.search});

  SuraModel? suraModel;

  @override
  State<QuraanTap> createState() => _QuraanTapState();
}

class _QuraanTapState extends State<QuraanTap> {
  List<int> mostRecently = [];
  List<SuraModel> suras =
      List.generate(SuraModel.suras.length, (index) => SuraModel.suras[index]);

  late List<SuraModel> filteredSuras = SuraModel.suras
      .where(
        (e) => e.arName.contains(widget.search ?? ''),
      )
      .toList();

  TextEditingController controller = TextEditingController();

  _QuraanTapState();



  @override
  Widget build(BuildContext context) {
    List<SuraModel> temp = SuraModel.suras
        .where((e) => mostRecently.contains(e.suraCount - 1))
        .toList();

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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CustomTextField(
                      onChanged: (p0) {
                        if (p0.length > 3) {
                          setState(() {
                            print('xxxxxxxxx');
                          });
                        } else if (p0.isEmpty) {
                          setState(() {
                            print('xxxxxxxxx');
                          });
                        }
                      },
                      controller: controller,
                      hintText: 'Sura Name..',
                      prefixIcon: AppAsset.quraanIcon,
                    ),
                  ),
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
                          itemCount: temp.length,
                          itemBuilder: (context, index) => SuraCard(
                              onSuraClicked: addToMostRecent,
                              suraModel: SuraModel.suras[
                                  mostRecently.toSet().elementAt(index) - 1]))),
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
                          separatorBuilder: (context, index) => const Divider(
                                endIndent: 36,
                                indent: 36,
                              ),
                          itemCount: filteredSuras.length,
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => SuraTile(
                                onSuraClicked: addToMostRecent,
                                suraModel: filteredSuras[index],
                              ))),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  void addToMostRecent(int id) {
    mostRecently.insert(0, id);
    print(mostRecently);

    setState(() {});
  }
}
