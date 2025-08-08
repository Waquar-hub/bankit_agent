import 'package:bankit_agent/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("Help Center"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
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
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Text("Help Center Details",style: AppStyle.h3,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email Us :",style: AppStyle.h4,),
                              8.verticalSpace,
                              Text("Website :",style: AppStyle.h4,),
                              8.verticalSpace,
                              Text("Call Us :",style: AppStyle.h4,),
                              8.verticalSpace,
                              Text("Whatsapp :",style: AppStyle.h4,),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("support@bankit.in",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              8.verticalSpace,
                              Text("https://www.bankit.in/",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              8.verticalSpace,
                              Text("8142600000",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              8.verticalSpace,
                              Text("919311340456",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
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
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Text("Customer Grievance",style: AppStyle.h3,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      SizedBox(
                          width: 400.w,
                          child: Text('For any grievance of the users relating to the use of BSPL website or mobile application or any technical issues arising thereby such as hacking, technical errors, downtime. etc. please contact the below-mentioned Grievance Officer:',style: AppStyle.h44,)),

                      20.verticalSpace,
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name :",style: AppStyle.h4,),
                              8.verticalSpace,
                              Text("Email Id :",style: AppStyle.h4,),
                              8.verticalSpace,
                              Text("Helpline No. :",style: AppStyle.h4,),
                              10.verticalSpace,
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Rajeev Malhotra",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              8.verticalSpace,
                              Text("rajeev.malhotra@bankit.in",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              8.verticalSpace,
                              Text("+91 76177590100",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              10.verticalSpace,

                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                          width: 400.w,
                          child: Text("For any grievance of the users relating to the services provided by BSPL, such as DMT, AEPS, Prepaid Cards, Recharge, etc. please contact us at:",style: AppStyle.h44,)),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email Id :",style: AppStyle.h4,),
                              8.verticalSpace,
                              Text("Helpline No. :",style: AppStyle.h4,),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("legal@bankit.in",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                              8.verticalSpace,
                              Text("+91 76177590100",style: AppStyle.h44.copyWith(color: Colors.blueAccent),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
