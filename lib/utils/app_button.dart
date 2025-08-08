import 'package:bankit_agent/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_text_style.dart';

class AppButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final double? w;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final bool? isLoading;
  final String text;
  const AppButton({super.key,this.w,this.color,this.borderRadius,this.height,required this.text,required this.onTap,this.textColor,this.borderColor,this.isLoading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.white,
      onTap: onTap,
      child: isLoading ??false ?Center(child: CircularProgressIndicator(
        color: AppColors.base,
      )):Container(
        width: w ?? 100.w,
        decoration: BoxDecoration(
            color:color ?? Color(0xff00aee6),
          borderRadius: BorderRadius.circular(borderRadius ?? 6.w),
          border: Border.all(color:borderColor?? Color(0xff00aee6))
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical:height ?? 10.h),
          child: Center(
            child: Text(text,style: AppStyle.h4.copyWith(color:textColor ?? Color(0xffFFFFFF)),),
          ),
        ),
      ),
    );
  }
}
