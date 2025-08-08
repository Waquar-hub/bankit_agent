import 'package:flutter/cupertino.dart';

abstract class LoginEvent{}

class SubmitEvent extends LoginEvent{
  BuildContext pageContext;
  String email;
  String password;
  SubmitEvent({required this.pageContext,required this.email,required this.password,});
}