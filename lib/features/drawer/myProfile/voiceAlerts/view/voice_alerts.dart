import 'package:bankit_agent/core/app_colors.dart';
import 'package:bankit_agent/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoiceAlerts extends StatefulWidget {
  const VoiceAlerts({super.key});

  @override
  State<VoiceAlerts> createState() => _VoiceAlertsState();
}

class _VoiceAlertsState extends State<VoiceAlerts> {

  bool light = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("Voice Alerts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height*0.20.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              14.verticalSpace,
              Row(
                children: [
                  20.horizontalSpace,
                  Image.asset("assets/icons/megaphone.png",height: 40.h,color: Colors.red,),
                  10.horizontalSpace,
                  Text("Voice Alert",style: AppStyle.h4,),
                  Spacer(),
                  Text('OFF',style: AppStyle.h3,),
                  Switch(value: light, onChanged: (bool value) {
                    light = !light;
                    setState(() {
                    });
                  },),
                  Text('ON',style: AppStyle.h3.copyWith(color: Colors.green),),
                  10.horizontalSpace,
                ],
              ),
              10.verticalSpace,
              SizedBox(
                  width: 300.w,
                  child: Divider(
                    thickness: 2.w,
                    color: AppColors.base,
                  )),
              10.verticalSpace,
              Row(
                children: [
                  20.horizontalSpace,
                  Image.asset("assets/icons/podcast.png",height: 40.h,),
                  10.horizontalSpace,
                  Text("Podcast",style: AppStyle.h4,),
                  Spacer(),
                  Icon(Icons.play_circle_outline,color: AppColors.base,size: 40.w,),
                  46.horizontalSpace,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

