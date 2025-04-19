import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/common/app_assets.dart';
import 'package:islamy/common/app_colors.dart';

class Channelcard extends StatefulWidget {
   Channelcard({super.key,required this.text});
   String text ='Radio Ibrahim Al-Akdar';

  @override
  State<Channelcard> createState() => _ChannelcardState();
}
class _ChannelcardState extends State<Channelcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Container(
          constraints: const BoxConstraints(minWidth: 380),
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(20)),
          height: MediaQuery.of(context).size.height * .16,
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    AppAsset.SuraDetailsfooter,
                    color: AppColors.blackColor.withOpacity(.7),
                    width: 320,
                  )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      widget.text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const SizedBox(
                          width: 128,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.play_arrow_solid,
                              color: Colors.black,
                              size: 30,
                            )),IconButton(
                            onPressed: () {},
                            icon: Icon(
                             CupertinoIcons.volume_up,
                              color: Colors.black,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
