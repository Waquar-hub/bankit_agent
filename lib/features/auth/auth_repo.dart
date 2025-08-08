import 'dart:developer';
import 'package:bankit_agent/core/app_url.dart';
import '../../data/network/network_api_services.dart';
import 'loginWithEmail/model/login_response_model.dart';

class AuthRepo {
  final ApiClient _apiClient;
  AuthRepo(this._apiClient);
  Future<LoginResponse> loginWithId(Map<String,String> data) async {
    var response = await _apiClient.post(AppUrl.login,data: data);
    return LoginResponse.fromJson(response);
  }

  Future<LoginResponse> checkUserDetail(Map<String,String> data) async {
    var response = await _apiClient.post(AppUrl.checkUserDetails,data: data);
    return LoginResponse.fromJson(response);
  }

  Future<LoginResponse> verifyOtp(Map<String,String> data) async {
    var response = await _apiClient.post(AppUrl.verifyOtp,data: data);
    return LoginResponse.fromJson(response);
  }

  Future<LoginResponse> forgotPassword(Map<String,String> data) async {
    var response = await _apiClient.post(AppUrl.forgotPassword,data: data);
    return LoginResponse.fromJson(response);
  }
}
