import 'package:bankit_agent/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/url_launcher.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              Image.asset(
                height: 80.h,
                'assets/socialMedia/businessman.png',
              ),
              SizedBox(height: 10.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  border: Border.all(color: Colors.black12)
                ),
                child: Padding(
                  padding:  EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Rakesh Kumar Sharma",style: AppStyle.h44,),
                      SizedBox(height: 4.h,),
                      Text("MID: M05656",style: AppStyle.h44,),
                      SizedBox(
                        width:300.w,
                        child: Divider(

                        ),
                      ),
                      SizedBox(height: 4.h,),
                      InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(Uri(scheme: 'tel', path: '9876543210'));
                        },
                        child: Row(
                          children: [
                            SizedBox(width: 10.w,),
                          Icon(Icons.call,color: Colors.black,),
                            SizedBox(width: 20.w,),
                          Text("9876543210",style: AppStyle.h5.copyWith(color: Colors.lightBlue),)
                        ],),
                      ),
                      SizedBox(height: 10.h,),
                      InkWell(
                        onTap: (){
                          UrlLauncher.urlLaunch(Uri(
                            scheme: 'mailto',
                            path: 'Rakeshk225@gmail.com',
                          ));
                        },
                        child: Row(
                          children: [
                            SizedBox(width: 10.w,),
                            Icon(Icons.mail,color: Colors.black,),
                            SizedBox(width: 20.w,),
                            Text("Rakeshk225@gmail.com",style: AppStyle.h5.copyWith(color: Colors.lightBlue))
                          ],),
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 10.w,),
                          Icon(Icons.location_on,color: Colors.black,),
                          SizedBox(width: 20.w,),
                          SizedBox(
                              width: 260.w,
                              child: Text("13B, 1st Floor, Tejpura, Surajpur crossing, Near Punjab National Bank, Badarpur, New Delhi 110044",
                              style: AppStyle.h5light,)
                          )
                        ],),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: Colors.black12)
                ),
                child: Padding(
                  padding:  EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Agent Login Id:",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("Distributor Name:",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("Distributor ID:",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("Distributor Mobile No. :",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("MDS ID:",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("MDS NAME:",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("MDS Mobile No. :",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("Service By :",style: AppStyle.h5,),
                          SizedBox(height: 10.h,),
                          Text("Sales Person Mobile :",style: AppStyle.h5,),
                        ],
                      ),
                      SizedBox(width: 30.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width:160.w,
                              child: Text("9876543210/waquar.k@tsiplc.com",style: AppStyle.h5.copyWith(color: Colors.lightBlue),)),
                          SizedBox(height: 4.h,),
                          Text("DSPBTSI",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("DSPB17033",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("9876543210",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("12914",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("MD HO BANKIT FINDI",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("9876543210",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("9876543210",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                          Text("9876543210",style: AppStyle.h5.copyWith(color: Colors.lightBlue),),
                          SizedBox(height: 10.h,),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
