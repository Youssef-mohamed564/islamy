import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy/common/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText
   ,this.prefixIcon});

  final String? prefixIcon ;

  final String hintText  ;

  @override
  Widget build(BuildContext context) {
    return TextField(style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintStyle:const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(prefixIcon??'',
                height: 28,
                width: 28,
                colorFilter: ColorFilter.mode(
                  AppColors.mainColor,
                  BlendMode.srcIn,
                )),
          ),
          filled: true,
          fillColor: AppColors.blackColor.withOpacity(.65),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.mainColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.mainColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.mainColor))),
    );
  }
}
