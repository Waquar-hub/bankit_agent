import 'dart:convert';
import 'package:bankit_agent/features/auth/auth_repo.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/loginWithEmailBloc/bloc.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/verifyOtpBloc/event.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/verifyOtpBloc/state.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/flush_bar.dart';
import '../../../../../data/appExceptions/handle_error.dart';
import '../../../../../di/dependency_injection.dart';
import '../../../../../services/deviceAndLocationData/user_location.dart';
import '../../model/login_response_model.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent,VerifyOtpState>{
  AuthRepo repository;
  VerifyOtpBloc({required this.repository}):super(VerifyOtpState.initial()){
    on<SubmitOtpButton>(_submit);
    on<ResendOtpEvent>(_resendOtp);
    on<ErrorVisible>(_errorVisible);
  }

  _submit(SubmitOtpButton event, emit) async {
    emit(state.copyWith(isLoading: true,));
    Map<String, String> body = {
      "mobileNo": event.pageContext.read<LoginEmailBloc>().state.emailId,
      "MPIN": sha1.convert(utf8.encode(event.pageContext.read<LoginEmailBloc>().state.password,)).toString(),
      "otp": event.otp,
      "channel": "APP",
      "imei": sl<DeviceAndLocationService>().userLocation!.imeiNo,
      "location": "\/Address :${sl<DeviceAndLocationService>().userLocation!.address} ",
      "ipAddress": "${sl<DeviceAndLocationService>().userLocation!.ip_address}",
      "fcmToken": sl<DeviceAndLocationService>().userLocation!.fcmToken
    };
    try {
      LoginResponse response = await repository.verifyOtp(body).catchError(
          handleErrorWithContext(event.pageContext));
      if (response.status == "0") {
        event.pageContext.go("/dashboardPage");
      } else if (response.status == "1") {
        AppFlushBar.flushBar(
            response.message, event.pageContext, Colors.redAccent);
      }
    } finally {
      emit(state.copyWith(isLoading: false,));
    }
  }

  _resendOtp(ResendOtpEvent event,emit) async{
    if (!state.canSend == false) return;
    emit(state.copyWith(canSend: true, timer: 10));
    for (int i = 9; i >= 0; i--) {
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(timer: i));
    }
    emit(state.copyWith(canSend: false));
  }

  _errorVisible(ErrorVisible event,emit){
    print("resend ErrorVisible ${event.isErrorVisible}");
    emit(state.copyWith(isLoading: false,errorVisible: event.isErrorVisible));
  }
}