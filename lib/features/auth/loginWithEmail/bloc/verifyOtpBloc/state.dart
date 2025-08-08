import 'package:equatable/equatable.dart';

class VerifyOtpState extends Equatable{
  final String otp;
  final bool isLoading;
  final bool errorVisible;
  final bool canSend;
  final int timer;
  VerifyOtpState({required this.otp,required this.isLoading,required this.errorVisible,required this.canSend,required this.timer});

  factory VerifyOtpState.initial(){
    return VerifyOtpState(otp: '', isLoading: false, errorVisible: false,canSend: false,timer: 0);
  }

  VerifyOtpState copyWith({String? otp,bool? isLoading,bool? errorVisible,bool? canSend,int? timer}){
    return VerifyOtpState(otp: otp ?? this.otp, isLoading: isLoading?? this.isLoading, errorVisible: errorVisible ?? this.errorVisible,canSend: canSend ?? this.canSend,timer: timer?? this.timer);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [otp,isLoading,errorVisible,canSend,timer];
}