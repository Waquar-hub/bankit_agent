import 'dart:convert';
import 'package:bankit_agent/core/app_colors.dart';
import 'package:bankit_agent/features/auth/auth_repo.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/loginWithEmailBloc/event.dart';
import 'package:bankit_agent/features/auth/loginWithEmail/bloc/loginWithEmailBloc/state.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/flush_bar.dart';
import '../../../../../data/appExceptions/handle_error.dart';
import '../../../../../di/dependency_injection.dart';
import '../../../../../services/deviceAndLocationData/user_location.dart';
import '../../model/login_response_model.dart';

class LoginEmailBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepo repository;

  LoginEmailBloc({required this.repository}) :super(LoginState.initial()) {
    on<SubmitEvent>(_onSubmit);
  }

  _onSubmit(SubmitEvent event, emit) async {
    emit(state.copyWith(isLoading: true));
    Map<String,String> body =state.passwordVisible? {
      "mobileNo" : event.email,
      "MPIN":sha1.convert(utf8.encode(event.password)).toString(),
      "ENC":event.password,
      "Version":"${sl<DeviceAndLocationService>().userLocation!.appVersion}",
      "imei":sl<DeviceAndLocationService>().userLocation!.imeiNo,
      "location":"\/Address :${sl<DeviceAndLocationService>().userLocation!.address} ",
      "latlong":"${sl<DeviceAndLocationService>().userLocation!.latitude},${sl<DeviceAndLocationService>().userLocation!.longitude}",
      "ipAddress":"${sl<DeviceAndLocationService>().userLocation!.ip_address}",
      "buildVersion":"${sl<DeviceAndLocationService>().userLocation!.buildVersion}",
      "channel":"APP",
      "fcmToken":sl<DeviceAndLocationService>().userLocation!.fcmToken
    }: {"mobile_email":event.email,
      "ipAddress":"${sl<DeviceAndLocationService>().userLocation!.ip_address}",
      "action":"sendOTP"};
    try {
      if(state.passwordVisible){
        LoginResponse response = await repository.loginWithId(body).catchError(handleErrorWithContext(event.pageContext));
        if (response.status == "1") {
          AppFlushBar.flushBar(
              response.message, event.pageContext, Colors.redAccent);
        } else {
          if (event.pageContext.mounted) {
            print("reponse nnnnn");
            // event.pageContext.go("/registerMobile");
            event.pageContext.go("/dashboardPage");
          }
        }
      }else if(state.passwordVisible == false){
        LoginResponse response =await repository.checkUserDetail(body).catchError(handleErrorWithContext(event.pageContext));
        if (response.status == "00") {
          AppFlushBar.flushBar(
              response.message, event.pageContext,AppColors.success);
          emit(state.copyWith(isLoading: false,emailId:event.email,password:event.password ,passwordVisible: true));
        } else if(response.status == "02") {
          if (event.pageContext.mounted) {
            AppFlushBar.flushBar(
                response.message, event.pageContext,Colors.redAccent);
          }
        }
      }
      emit(state.copyWith(isLoading: false,emailId:event.email,password:event.password ));
    } finally {
      emit(state.copyWith(isLoading: false,emailId:event.email,password:event.password ));
    }
  }
}