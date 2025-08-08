import 'package:bankit_agent/features/drawer/myProfile/changePassword/view/change_password.dart';
import 'package:bankit_agent/features/drawer/myProfile/changePin/view/change_pin.dart';
import 'package:bankit_agent/features/drawer/myProfile/changeTransactionPin/view/change_tansec_pin.dart';
import 'package:bankit_agent/features/drawer/myProfile/voiceAlerts/view/voice_alerts.dart';
import 'package:bankit_agent/core/app_colors.dart';
import 'package:bankit_agent/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/image_path.dart';
import '../../utils/url_launcher.dart';
import '../drawer/helpCenter/help_center.dart';
import '../drawer/myProfile/personalDetails/view/personal_details.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> banners = [
    AppImage.banner1,AppImage.banner2,AppImage.banner3,AppImage.banner1,AppImage.banner2
  ];
  int currentIndex = 0;
  void _startAutoTransition() async {
    while (mounted) {
      await Future.delayed(Duration(seconds: 5));
      if (!mounted) return;
      setState(() {
        currentIndex = (currentIndex + 1) % banners.length;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startAutoTransition();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        foregroundColor:AppColors.base,
        backgroundColor: AppColors.base,
        onPressed: (){},
        child: Icon(Icons.add,color: Colors.white,),),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: AppColors.base,
        actions: [
          Text("₹ 0.0",style:GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold
          ).copyWith(color:AppColors.white ),),
          SizedBox(width: 12.w,),
          Icon(Icons.cached_rounded,color: AppColors.white,size: 24.w,),
          SizedBox(width: 8.w,),
          Icon(Icons.info_outline,size: 24.w,color: AppColors.white),
          SizedBox(width: 8.w,),
          Badge.count(
            count:0,
            child: Icon(Icons.notifications,color: AppColors.white,size: 24.w,),
          ),
          SizedBox(width: 8.w,),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: AppColors.base,
              child: Padding(
                padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 40.h,bottom: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                        height: 80.h,
                        'assets/socialMedia/businessman.png',
                      color: Colors.white,
                    ),
                    Text("Waquar Ahmed ",style: AppStyle.h3.copyWith(color: Colors.white),),
                  ],
                ),
              ),
            ),
            ExpansionTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text(
                'My Profile',
                style: AppStyle.h4,
              ),
              children: [
                ListTile(
                  title: Text('    Personal Details'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return PersonalDetails();
                    }));
                    // Navigate to My Certificates
                  },
                ),
                ListTile(
                  title: Text('    Change Pin'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ChangePin();
                    }));
                  },
                ),
                ListTile(
                  title: Text('    Change Password'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ChangePassword();
                    }));
                  },
                ),
                ListTile(
                  title: Text('    Change Transaction Pin'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ChangeTPin();
                    }));
                  },
                ),
                ListTile(
                  title: Text('    Voice Alerts'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return VoiceAlerts();
                    }));
                  },
                ),
              ],
            ),
            ListTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text('Billing',
                style: AppStyle.h4,
              ),
              onTap: () {
                // Navigate to My Certificates
              },
            ),
            ListTile(
              leading: Image.asset('assets/drawer/commision.png',color: Colors.black,height: 18.h,),
              title: Text('Commission Structure',
                style: AppStyle.h4,
              ),
              onTap: () {
                // Navigate to My Certificates
              },
            ),
            ExpansionTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text(
                'Certificate',
                style: AppStyle.h4,
              ),
              children: [
                ListTile(
                  title: Text('    TDS Exemption Certificate'),
                  onTap: () {
                    // Navigate to My Certificates
                  },
                ),
                ListTile(
                  title: Text('    Retailer Certificate'),
                  onTap: () {
                    // Navigate to Verify Certificate
                  },
                ),
              ],
            ),
            ListTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text('Download Banner/POP',
                style: AppStyle.h4,
              ),
              onTap: () {
                // Navigate to My Certificates
              },
            ),
            ListTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text('Training Videos',
                style: AppStyle.h4,
              ),
              onTap: () {
                // Navigate to My Certificates
              },
            ),
            ListTile(
              leading: Image.asset('assets/drawer/yourservices.png',color: Colors.black,height: 22.h,),
              title: Text('Know Our Services',
                style: AppStyle.h4,
              ),
              onTap: () {
                UrlLauncher.urlLaunch(Uri.parse('https://www.bankit.in/products-n-services'));
                // Navigate to My Certificates
              },
            ),
            ExpansionTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text(
                'Update/Refer App',
                style: AppStyle.h4,
              ),
              children: [
                ListTile(
                  title: Text('    Update App'),
                  onTap: () {
                    UrlLauncher.urlLaunch(Uri.parse('in.bankitagent'));
                    // Navigate to My Certificates
                  },
                ),
                ListTile(
                  title: Text('    Refer App'),
                  onTap: () {
                    // Navigate to Verify Certificate
                  },
                ),
              ],
            ),
            ListTile(
              leading: Image.asset('assets/drawer/myprofile.jpg',color: Colors.black,height: 18.h,),
              title: Text('Help Center',
                style: AppStyle.h4,
              ),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return HelpCenter();
                }));
                // Navigate to My Certificates
              },
            ),
            SizedBox(height: 10.h,),
            Align(
                alignment: Alignment.center,
                child: Text("Follow Us:",style: AppStyle.h4,)),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                InkWell(
                    onTap: (){
                      UrlLauncher.urlLaunch(Uri.parse('https://x.com/BANKIT39656280'));
                    },
                    child: buildCircleAvatar(AppImage.twitter,true)),
                InkWell(
                    onTap: (){
                      UrlLauncher.urlLaunch(Uri.parse('https://www.linkedin.com/company/bankit_india/'));
                    },
                    child: buildCircleAvatar(AppImage.linkedIn,true)),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
               width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
             height: MediaQuery.of(context).size.height*.2,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                transitionBuilder: (widget, animation) => FadeTransition(opacity: animation, child: widget),
                child: Image.network(
                  height: MediaQuery.of(context).size.height*.2,
                  banners[currentIndex],
                  key: ValueKey<String>(banners[currentIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.all(8.w),
              child: Center(
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
                  child: Column(
                    children: [
                      SizedBox(height: 10.h,),
                      Text("Booking Services",style: AppStyle.h3,),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              bankingServices(AppImage.dmt,"Money Transfer"),
                              SizedBox(height: 20.h,),
                              bankingServices(AppImage.pos,'POS'),
                            ],
                          ),
                          SizedBox(width: 30.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.aeps,'Aeps'),
                              SizedBox(height: 34.h,),
                              bankingServices(AppImage.settlement,'Settlement'),
                            ],
                          ),
                          SizedBox(width:30.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.mATM,'mATM'),
                              SizedBox(height: 34.h,),
                              bankingServices(AppImage.dmt,'DMT-PPI'),
                            ],
                          ),
                          SizedBox(width: 20.w,),
                        ],
                      ),
                      SizedBox(height: 14.h,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.all(8.w),
              child: Center(
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
                  child: Column(
                    children: [
                      SizedBox(height: 10.h,),
                      Text("Utility & Recharge",style: AppStyle.h3,),
                      SizedBox(height: 20.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              bankingServices(AppImage.mobPrepaid,"Mobile Postpaid"),
                              SizedBox(height: 20.h,),
                              bankingServices(AppImage.cashCollection,'Cash Collection'),
                              SizedBox(height: 10.h,),
                              bankingServices(AppImage.pancard,'PANCARD'),
                            ],
                          ),
                          SizedBox(width: 4.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.payBills,'Pay Bills'),
                              SizedBox(height: 32.h,),
                              bankingServices(AppImage.dth,'DTH'),
                              SizedBox(height: 22.h,),
                              bankingServices(AppImage.fastag,'Fastag'),
                            ],
                          ),
                          SizedBox(width:4.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.payCreditCardBill,'Credit Card Payment'),
                              SizedBox(height:20.h,),
                              bankingServices(AppImage.mobPrepaid,'Mobile Recharge'),
                              SizedBox(height: 10.h,),
                              bankingServices(AppImage.dth,'Mobile Recharge'),
                            ],
                          ),
                          SizedBox(width:4.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.rentPayment,'Rent Payment'),
                              SizedBox(height: 32.h,),
                              bankingServices(AppImage.ottRecharge,'OTT'),
                              SizedBox(height: 26.h,),
                              bankingServices(AppImage.wToW,'Insurance'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h,)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.all(8.w),
              child: Center(
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
                  child: Column(
                    children: [
                      SizedBox(height: 10.h,),
                      Text("Dashboard",style: AppStyle.h3,),
                      SizedBox(height: 20.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              bankingServices(AppImage.addMoney,"Add Money"),
                              SizedBox(height: 20.h,),
                              bankingServices(AppImage.transactionEnquiry,'Transaction Enquiry'),
                              SizedBox(height: 20.h,),
                              bankingServices(AppImage.settlement,'DMT PPI Refund'),

                              SizedBox(height: 20.h,)
                            ],
                          ),
                          SizedBox(width: 4.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.wbRequest,'WB Request'),
                              SizedBox(height: 20.h,),
                              bankingServices(AppImage.customerReport,'Customer Report'),
                            ],
                          ),
                          SizedBox(width:4.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              bankingServices(AppImage.wToW,'Wallet To Wallet'),
                              SizedBox(height:8.h,),
                              bankingServices(AppImage.businessReport,'Business Dashboard'),
                            ],
                          ),
                          SizedBox(width:4.w,),
                          Column(
                            children: [
                              bankingServices(AppImage.transactionHistory,'Transaction History'),
                              SizedBox(height: 6.h,),
                              bankingServices(AppImage.loyaltyCashback,'Loyalty Cashback'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h,)
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

  Column bankingServices(image,title) {
    return Column(
      children: [
        Image.network(image, scale: 2.2.w,),
        SizedBox(height: 10.h,),
        SizedBox(
            width: 80.w,
            child: Text(title, style: AppStyle.h5,
              textAlign: TextAlign.center,
            ))
      ],
    );
  }

  CircleAvatar buildCircleAvatar(iconName,image) {
    return CircleAvatar(
        backgroundColor: AppColors.base,
        child:image? Image.asset(iconName,): Icon(iconName, color: AppColors.white));
  }
}



