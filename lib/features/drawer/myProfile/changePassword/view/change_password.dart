import 'package:bankit_agent/utils/app_button.dart';
import 'package:bankit_agent/utils/app_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_text_style.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("Change Password"),
      ),
      body: Column(
        children: [
          30.verticalSpace,
          AppField(controller:controller,labelText: "Enter Current Password",),
          20.verticalSpace,
          AppField(labelText: "Enter New Password *",controller: controller,),
          20.verticalSpace,
          AppField(labelText: "Enter Confirm Password *",controller: controller,),
          10.verticalSpace,
          buildRow('Minimum 8 Characters'),
          buildRow('One Uppercase Letter'),
          buildRow('One Lowercase Letter'),
          buildRow('One Numeric Digit And Special Character'),
          100.verticalSpace,
          AppButton(w:240.w,text: 'Change My Password', onTap: (){
            Navigator.pop(context);
          }),

        ],
      ),
    );
  }

  Row buildRow(title ) {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.horizontalSpace,
            Text("* ",style:AppStyle.h3.copyWith(color: Colors.red) ,),
            Text(title,style: AppStyle.h44.copyWith(color: Colors.red),),
          ],
        );
  }
}
