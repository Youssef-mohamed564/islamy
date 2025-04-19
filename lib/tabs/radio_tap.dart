import 'package:flutter/material.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/views/channelCard.dart';

import '../common/app_colors.dart';

class RadioTap extends StatefulWidget {
  RadioTap({super.key});
  bool radio = true;
  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAsset.radioBackGround,fit: BoxFit.fitWidth,width: double.infinity,),
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .19),
              Row(
                children: [
                  FilledButton(
                      style: ButtonStyle(
                          fixedSize:
                              const WidgetStatePropertyAll(Size(160, 38)),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                          foregroundColor: WidgetStatePropertyAll(widget.radio
                              ? AppColors.blackColor
                              : Colors.white),
                          backgroundColor: WidgetStatePropertyAll(widget.radio
                              ? AppColors.mainColor
                              : Colors.black.withOpacity(.7))),
                      onPressed: () {
                        widget.radio = !widget.radio;
                        setState(() {});
                      },
                      child: const Text('Radio')),
                  FilledButton(
                      style: ButtonStyle(
                          fixedSize:
                              const WidgetStatePropertyAll(Size(160, 38)),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                          foregroundColor: WidgetStatePropertyAll(
                              widget.radio ? Colors.white : Colors.black),
                          backgroundColor: WidgetStatePropertyAll(widget.radio
                              ? Colors.black.withOpacity(.7)
                              : AppColors.mainColor)),
                      onPressed: () {
                        widget.radio = !widget.radio;
                        setState(() {});
                      },
                      child: const Text('Reciters'))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: ListView(
                  children: [
                    Channelcard(
                      text: 'Radio Ibrahim Al-Akdar',
                    ),
                    Channelcard(
                      text: 'Radio Al-Qaria Yassen',
                    ),
                    Channelcard(
                      text: 'Radio Ahmed Al-trabulsi',
                    ),
                    Channelcard(
                      text: 'Radio Addokali Mohammad Alalim',
                    )
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
