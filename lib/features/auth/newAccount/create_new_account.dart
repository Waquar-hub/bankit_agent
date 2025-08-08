import 'package:bankit_agent/utils/app_field.dart';
import 'package:bankit_agent/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController  controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("Agent On-boarding [Step - 1 ]",),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h,),
          AppField(
            labelText: 'Enter Mobile Number.',
            controller: controller,
          ),

          SizedBox(height: 10.h,),
          Text("On-boarding Agent Consent",style: AppStyle.h44.copyWith(color: Colors.red),),
          SizedBox(height: 40.h,),

          Row(
            children: [
              Checkbox(
                  visualDensity: VisualDensity.compact,
                  value: true, onChanged: (_){}),
              SizedBox(
                  width: 310.w,
                  child: Text("I have read and hereby agree to the Privacy Policy and User Agreement",style: AppStyle.h5,))
            ],
          ),

          Row(
            children: [
              Checkbox(
                visualDensity: VisualDensity.compact,
                  value: true, onChanged: (_){}),
              SizedBox(
                  width: 310.w,
                  child: Column(
                    children: [
                      Text("Promotional/transactional informational and material policy",style: AppStyle.h5,),
                      Text("(Please click the above policy link and give consent to process further)",style: AppStyle.h5.copyWith(color: Colors.blue),),
                    ],
                  ))
            ],
          ),

        ],
      ),
    );
  }
}
