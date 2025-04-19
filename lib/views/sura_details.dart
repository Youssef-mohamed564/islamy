import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/models/sura_model.dart';

import '../common/app_colors.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});
  static const String routeName = '/suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraContent = [];
  late SuraModel suraModel;
  bool loadContent = true;
  bool error = false, success = false, loading = false;
  String? errorText;
  @override
  Widget build(BuildContext context) {
    suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (loadContent) {
      loudSuraContent();
      loadContent = false;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
            )),
        title: Text(suraModel.enName),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Image.asset(
                AppAsset.SuraDetailsHeader1,
                height: 92,
              ),
              const Spacer(),
              Text(
                suraModel.arName,
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Image.asset(
                AppAsset.SuraDetailsHeader2,
                height: 92,
              ),
              const SizedBox(width: 20),
            ],
          ),
          loading
              ?  const Center(
                  child: CircularProgressIndicator(),
                )
              : success
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: SingleChildScrollView(
                            child: RichText(
                                textDirection: TextDirection.rtl,
                                text: TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(color: AppColors.mainColor),
                                    children: suraContent
                                        .map((verse) => TextSpan(
                                            text:
                                                ' $verse[${suraContent.indexOf(verse) + 1}] '))
                                        .toList())),
                          )),
                    )
                  : Center(
                      child: Text(errorText ?? ''),
                    ),
          const Spacer(),
          Image.asset(AppAsset.SuraDetailsfooter),
        ],
      ),
    );
  }

  Future<void> loudSuraContent() async {
    setState(() {
      loading = true;
    });
    try {
      String fileContent = await rootBundle
          .loadString('assets/files/Suras/${suraModel.suraCount}.txt');
      suraContent = fileContent.trim().split('\n');
      loading=false;
      success = true;
      setState(() {});
    } catch (e) {
      loading=false;
      error = true;
      errorText = e.toString();
      setState(() {});
    }
  }
}
