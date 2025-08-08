import 'package:bankit_agent/core/app_text_style.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/verifyOtpBloc/bloc.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/verifyOtpBloc/event.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/verifyOtpBloc/state.dart';
import 'package:bankit_agent/utils/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_colors.dart';
import '../../../../di/dependency_injection.dart';

class RegisterMobileNumber extends StatelessWidget {
  const RegisterMobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    String otpVal = "";
    return Scaffold(
      appBar: AppBar(title: Text("Register Mobile Number",),),
      body: BlocProvider(create:(context) => sl<VerifyOtpBloc>(),
      child: SingleChildScrollView(
        child: BlocBuilder<VerifyOtpBloc,VerifyOtpState>(
          builder: (BuildContext context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80.h,),
                Text("Please enter Verification Code sent on your Registered Mobile Number. \nIf DND is Registered on your Mobile Number, Contact your Channel Partner.",style: AppStyle.h4,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 100.h,),
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
                      context.read<VerifyOtpBloc>().add(ErrorVisible(isErrorVisible: true));
                  },
                  onSubmit: (String verificationCode) {
                    otpVal = verificationCode;
                    context.read<VerifyOtpBloc>().add(ErrorVisible(isErrorVisible: false));
                  },
                ),
                SizedBox(height: 20.h,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:  EdgeInsets.only(right:30.w ),
                      child:state.canSend?Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Resend Otp in : ",style: AppStyle.h44.copyWith(color: AppColors.base),),
                          Text(state.timer.toString(),),
                        ],
                      ): InkWell(
                          onTap: (){
                            context.read<VerifyOtpBloc>().add(ResendOtpEvent());
                          },
                          child: Text("Resend Otp ",style: AppStyle.h44.copyWith(color: AppColors.base),)),
                    )),
                SizedBox(height: 80.h,),
                AppButton(text: "SUBMIT", onTap: (){
                  if(otpVal.length == 6){
                    context.read<VerifyOtpBloc>().add(SubmitOtpButton(otp: otpVal, pageContext: context));
                  }else{
                    context.read<VerifyOtpBloc>().add(ErrorVisible(isErrorVisible: true));
                  }
                },w: 200.w,isLoading: state.isLoading,),
                SizedBox(height: 20.h,),
                Visibility(
                    visible: state.errorVisible,
                    child: Text("OTP must be of 6 digits",style: AppStyle.h44.copyWith(color: Colors.redAccent),)),
                SizedBox(height: 80.h,),
              ],
            );
          },),
      ),
      ),
    );
  }
}
