import 'package:bankit_agent/features/auth/loginWithEmail/bloc/loginWithEmailBloc/bloc.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/loginWithEmailBloc/state.dart';
import 'package:bankit_agent/features/auth/newAccount/create_new_account.dart';
import 'package:bankit_agent/core/app_string.dart';
import 'package:bankit_agent/core/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_button.dart';
import '../../../../core/app_colors.dart';
import '../../../../utils/app_field.dart';
import '../../../../core/app_text_style.dart';
import '../../../../utils/form_validations.dart';
import '../../../../utils/url_launcher.dart';
import '../../createPin/view/create_pin.dart';
import '../../forgotPassword/view/forgot_password.dart';
import '../bloc/loginWithEmailBloc/event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: BlocBuilder<LoginEmailBloc,LoginState>(builder: (BuildContext context, state) {
          return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 70.h,),
                Image.asset(AppImage.logo,width: 200.w,),
                SizedBox(height:70.h,),
                AppField(controller: emailController,
                  labelText: AppString.emailField,
                  suffix: Icon(Icons.person, size: 20.w, color: Colors.black54,),
                  validator:FormValidators.validateEmailMobile,keyboardType: TextInputType.emailAddress,),
                SizedBox(height: 4.h,),
                Visibility(
                    visible: state.passwordVisible,
                    child: AppField(controller:passwordController,labelText: AppString.enterPassword,isPassword:true,validator: FormValidators.validatePassword,)),
                SizedBox(height: 14.h,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ForgotPassword();
                    }));
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(AppString.forgotPassword,style: AppStyle.h44.copyWith(color: Colors.lightBlue),)),
                ),
                SizedBox(height:30.h,),

                /// Login Button ///
                AppButton(text: AppString.login,w: 140.w,onTap: (){
                  context.read<LoginEmailBloc>().add(SubmitEvent(pageContext: context, email: emailController.text, password: passwordController.text));

                  /* if(key.currentState!.validate()){
                  }*/
                },isLoading: state.isLoading,),
                SizedBox(height: 20.h,),

                tryAnotherWay(),
                SizedBox(height: 20.h,),

                AppButton(text: AppString.createNew,w: 200.w,onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CreateNewAccount();
                  }));
                },),
                SizedBox(height: 40.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CreatePin(createPin: true,);
                          }));
                        },
                        child: Text(AppString.createPin,style: AppStyle.h44,)),
                    SizedBox(
                        height: 14.h,
                        child: VerticalDivider(color: Colors.black,thickness: 2,)),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CreatePin(createPin: false,);
                          }));
                        },
                        child: Text(AppString.forgotPin,style: AppStyle.h44,)),
                  ],
                ),
                SizedBox(height: 40.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 20.w,),
                    InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(UrlLauncher.emailLaunchUri);
                        },
                        child: buildCircleAvatar(Icons.phone,false)),
                    InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(Uri.parse('https://www.bankit.in/'));
                        },
                        child: buildCircleAvatar(Icons.mail,false)),
                    InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(Uri.parse('https://www.bankit.in/'));
                        },
                        child: buildCircleAvatar(Icons.public,false)),
                    InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(Uri.parse('https://www.facebook.com/bankit.in/'));
                        },
                        child: buildCircleAvatar(AppImage.facebook,true)),
                    InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(Uri.parse('https://www.youtube.com/c/BANKITIndia'));
                        },
                        child: buildCircleAvatar(AppImage.youtube,true)),
                    SizedBox(width: 20.w,),
                  ],
                ),
              ],
            ),
          );
        },),
      )
    );
  }

  CircleAvatar buildCircleAvatar(iconName,image) {
    return CircleAvatar(
        backgroundColor: AppColors.base,
        child:image? Image.asset(iconName,): Icon(iconName, color: AppColors.white));
  }

  Row tryAnotherWay() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 100.w, child: const Divider()),
        SizedBox(
          width: 4.w,
        ),
        Text(
          'Or',
          style: TextStyle(color: Colors.black38, fontSize: 12.sp),
        ),
        SizedBox(
          width: 4.w,
        ),
        SizedBox(width: 100.w, child: const Divider()),
      ],
    );
  }
}

