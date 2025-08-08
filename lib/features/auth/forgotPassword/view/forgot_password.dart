import 'package:bankit_agent/core/app_text_style.dart';
import 'package:bankit_agent/features/auth/forgotPassword/bloc/event.dart';
import 'package:bankit_agent/features/auth/forgotPassword/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_colors.dart';
import '../../../../di/dependency_injection.dart';
import '../../../../utils/app_button.dart';
import '../../../../core/app_string.dart';
import '../../../../core/image_path.dart';
import '../../../../utils/app_field.dart';
import '../../../../utils/form_validations.dart';
import '../bloc/bloc.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => sl<ForgotPasswordBloc>(),
    child:  Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("Forgot Password !!"),
      ),
      body: BlocBuilder<ForgotPasswordBloc,ForgotPasswordState>(builder: (BuildContext context, state) {
        return Column(
          children: [
            SizedBox(height: 70.h,),
            // Image.asset(AppImage.logo,width: 200.w,),
            SizedBox(height:80.h,),

            true? Text('Please enter Verification Code sent on your Registered Mobile Number. \nIf DND is Registered on your Mobile Number, Contact your Channel Partner.',style:AppStyle.h44 ,
              textAlign: TextAlign.center,
            ):Text('Please Enter Your Registered Email ID/Mobile no:',style:AppStyle.h444 ,),
            SizedBox(height: 20.h,),
            true?Column(
              children: [
                OtpTextField(
                  borderColor:AppColors.lBlack,
                  focusedBorderColor: AppColors.lBlack,
                  enabledBorderColor:AppColors.lBlack,
                  fieldWidth: 46.w,
                  borderRadius:BorderRadius.circular(18.w),
                  numberOfFields: 6,
                  showFieldAsBox: true,
                  borderWidth: 1.w,
                ),
                SizedBox(height: 20.h,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 30.w),
                      child: true ? Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Resend Otp in : ",
                            style: AppStyle.h44.copyWith(color: AppColors.base),),
                          Text('10'.toString(),),
                        ],
                      ) : InkWell(
                          onTap: () {
                            // context.read<VerifyOtpBloc>().add(ResendOtpEvent());
                          },
                          child: Text("Resend Otp ",
                            style: AppStyle.h44.copyWith(color: AppColors.base),)),
                    )),
                SizedBox(height: 20.h,),
                SizedBox(height: 20.h,),

                Visibility(
                    visible:true,
                    child: Text("OTP must be of 6 digits",style: AppStyle.h44.copyWith(color: Colors.redAccent),)),
              ],
            ): AppField(controller: emailController,
              labelText: AppString.emailField,
              suffix: Icon(Icons.person, size: 20.w, color: Colors.black54,),
              validator:FormValidators.validateEmailMobile,keyboardType: TextInputType.emailAddress,),
            SizedBox(height:80.h,),

            AppButton(text: AppString.submit,w: 140.w,onTap: (){
              context.read<ForgotPasswordBloc>().add(SubmitEvent());
            },isLoading: state.isLoading,),
            SizedBox(height: 20.h,),
          ],
        );
      },),
    ),);
  }
}
