import 'package:flutter/cupertino.dart';

abstract class VerifyOtpEvent{}

class SubmitOtpButton extends VerifyOtpEvent{
  String otp;
  BuildContext pageContext;
  SubmitOtpButton({required this.otp,required this.pageContext});
}

class ResendOtpEvent extends VerifyOtpEvent{

}


class ErrorVisible extends VerifyOtpEvent{
   bool isErrorVisible;
   ErrorVisible({required this.isErrorVisible});
}