import 'package:flutter/material.dart';

import '../common/app_assets.dart';
import '../common/app_colors.dart';

class SebhaTap extends StatefulWidget {
  SebhaTap({super.key});
  int counter = 0;
  double turn = 0;

  String tasbih = 'سبحان الله';
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAsset.sebhaBackGround,width: double.infinity,),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .23,
              ),
              const Center(
                child: Text(
                  'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 36),
                ),
              ),
              SizedBox(height: 70, child: Image.asset(AppAsset.sebhaHead)),
              GestureDetector(
                onTap: () { 
                  widget.counter++;
                  widget.turn+=.035;
                  setState(() {});
                  if (widget.counter == 33) {
                    widget.counter = 0;
                    if (widget.tasbih == 'سبحان الله') {
                      widget.tasbih = 'الحمدلله';
                    } else if (widget.tasbih == 'الحمدلله') {
                      widget.tasbih = 'الله اكبر';
                    } else {
                      widget.tasbih = 'سبحان الله';
                    }
                  }
                },
                child: Stack(
                  children: [
                    AnimatedRotation(
                        child: Image.asset(AppAsset.sebhaBody),turns:  widget.turn,duration: Durations.medium1,),
                    Column(
                      children: [const SizedBox(height: 100,),
                        Center(
                          child: Text(
                            widget.tasbih,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 36),
                          ),
                        ),
                        Center(
                          child: Text(
                            widget.counter.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 36),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
