import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class LoginState extends Equatable {
  final String emailId;
  final String password;
  final bool passwordVisible;
  final bool isLoading;
  const LoginState({required this.emailId,required this.password,required this.isLoading,required this.passwordVisible});

  factory LoginState.initial() {
    return LoginState(emailId: '',password: '',isLoading: false, passwordVisible: false,);
  }

  LoginState copyWith({String? emailId,String? password,bool? passwordVisible,bool? isLoading}) {
    return LoginState(emailId: emailId ?? this.emailId,password: password?? this.password,isLoading: isLoading ?? this.isLoading,passwordVisible: passwordVisible ?? this.passwordVisible);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [emailId,password,passwordVisible,isLoading,];
}
