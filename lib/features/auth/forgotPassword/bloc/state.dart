import 'package:equatable/equatable.dart';

class ForgotPasswordState extends Equatable{
 final bool isLoading;

 ForgotPasswordState({required this.isLoading});

 factory ForgotPasswordState.initial(){
  return ForgotPasswordState(isLoading: false);
 }


 ForgotPasswordState copyWith ({bool? isLoading}){
  return ForgotPasswordState(isLoading:isLoading?? this.isLoading);
 }
  @override
  List<Object?> get props => [isLoading];
}