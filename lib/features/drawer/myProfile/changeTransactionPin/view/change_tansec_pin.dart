import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_button.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/app_text_style.dart';

class ChangeTPin extends StatefulWidget {
  const ChangeTPin({super.key});

  @override
  State<ChangeTPin> createState() => _ChangeTPinState();
}

class _ChangeTPinState extends State<ChangeTPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("Change Transaction Pin"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            40.verticalSpace,
            Text("Enter New Pin",style: AppStyle.h33,),
            20.verticalSpace,
            OtpTextField(
              borderColor:AppColors.lBlack,
              focusedBorderColor: AppColors.lBlack,
              enabledBorderColor:AppColors.lBlack,
              fieldWidth: 46.w,
              borderRadius:BorderRadius.circular(18.w),
              numberOfFields: 6,
              showFieldAsBox: true,
              borderWidth: 1.w,
              onCodeChanged: (String code) {
              },
              onSubmit: (String verificationCode) {
              },
            ),
            40.verticalSpace,
            Text("Enter Confirm Pin",style: AppStyle.h33,),
            20.verticalSpace,
            OtpTextField(
              borderColor:AppColors.lBlack,
              focusedBorderColor: AppColors.lBlack,
              enabledBorderColor:AppColors.lBlack,
              fieldWidth: 46.w,
              borderRadius:BorderRadius.circular(18.w),
              numberOfFields: 6,
              showFieldAsBox: true,
              borderWidth: 1.w,
              onCodeChanged: (String code) {
              },
              onSubmit: (String verificationCode) {
              },
            ),
            20.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.horizontalSpace,
                Text("*",style:AppStyle.h3.copyWith(color: Colors.red) ,),
                Text(" Enter Six Digit Pin",style: AppStyle.h44.copyWith(color: Colors.red),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.horizontalSpace,
                Text("*",style:AppStyle.h3.copyWith(color: Colors.red) ,),
                Text(" PIN Must Be Of 6 Digit",style: AppStyle.h44.copyWith(color: Colors.red),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.horizontalSpace,
                Text("*",style:AppStyle.h3.copyWith(color: Colors.red) ,),
                Text(" New Pin Different From Old PIN",style: AppStyle.h44.copyWith(color: Colors.red),),
              ],
            ),
            50.verticalSpace,
            AppButton(text: 'Change My Transaction Pin',w: 300.w, onTap: (){
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}
