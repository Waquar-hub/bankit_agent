import 'package:bankit_agent/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_button.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/image_path.dart';
import '../../../../utils/app_field.dart';








class CreatePin extends StatefulWidget {
  final bool createPin;
  const CreatePin({super.key,required this.createPin});

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {

  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text(widget.createPin?"CREATE PIN":'FORGOT PIN'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Image.asset(AppImage.logo,width: 200.w,),
            SizedBox(height:70.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextFormField(
                decoration:InputDecoration(
                  suffix: InkWell(
                      onTap: (){

                      },
                      child: Text("Send OTP")),
                  labelStyle: AppStyle.h44.copyWith(color: AppColors.lBlack),
                  labelText: "Enter Registered Mobile No",
                  // if you want to change the focusColor
                  // see https://github.com/flutter/flutter/issues/117852#issuecomment-1368611791
                  // you can have a background colour for your text fields
                  // you may use conditions to set different colours for different states
                  // you may use the OutlineInputBorder,
                  // or extend the InputBorder class to create your own
                  // the default is UnderlineInputBorder

                  // you can also define different border styles for different states
                  // e.g. when the field is enabled / focused / has error
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.lBlack),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.lBlack),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.lBlack),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black54),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h,),
            AppField(labelText: "Enter OTP",controller: controller,),
            SizedBox(height: 24.h,),

            Text("Enter New Pin",style: AppStyle.h4,),
            SizedBox(height: 20.h,),
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
                //handle validation or checks here if necessary
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
        
              },
            ),

            SizedBox(height: 30.h,),
            Text("Confirm Pin",style: AppStyle.h4,),
            SizedBox(height: 14.h,),
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
                //handle validation or checks here if necessary
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {

              },
            ),
            SizedBox(height: 34.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(text: 'Cancel',w: 140.w,onTap: (){
                },color: Colors.white,textColor: Colors.black87,),

                SizedBox(width: 20.w,),
                AppButton(text:'Submit',w: 140.w,onTap: (){
                },),
              ],
            )
        
          ],
        ),
      ),
    );
  }
}
