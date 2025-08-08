import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @Default('') String status,
    @Default('') String message,
    @Default('') String fulAgentId,
    @Default('') String agentId,
    @Default('') String Balance,
    @Default('') String mobileNumber,
    @Default('') String appText,
    @Default('') String agentName,
    @Default('') String emailId,
    @Default('') String txn_key,
    @Default('') String version,
    @Default('') String institution,
    @Default('') String dateOfJoining,
    @Default('') String changePwdFlag,
    @Default('') String agentKyc,
    @Default('') String kycStatus,
    @Default('') String planStatus,
    @Default('') String locationFlag,
    @Default('') String serviceBy,
    @Default('') String issales,
    @Default('') String state,
    @Default('') String city,
    @Default('') String pincode,
    @Default('') String distributorId,
    @Default('') String distributorName,
    @Default('') String address,
    @Default('') String distributorMobile,
    @Default('') String issuedOn,
    @Default('') String validtill,
    @Default('') String panNumber,
    @Default('') String clientId,
    @Default('') String salesPersonMobileNo,
    @Default('') String zone,
    @Default('') String MD_id,
    @Default('') String MD_name,
    @Default('') String MD_mobileNo,
    @Default('') String PG_KYC_Status,
    @Default('') String Razorpay_CC_Limit,
    @Default('') String agreementStatus,
    @Default('') String esignLimit,
    @Default('') String ESign_Request_CNT,
    @Default('') String Onboard_Channel,
    @Default('') String Certificate_Name,
    @Default('') String linkUrl,
    @Default(false) bool ekycflag,
    @Default(false) bool iciciEkycFlag,
    @Default(false) bool rnfi_onboarding_flag,
    @Default(false) bool paySp_onboarding_flag,
    @Default(false) bool paysprint_Phy_Onboarding,
    @Default(false) bool iserveuKycFlag,
    @Default(false) bool airtelekycFlag,
    @Default([]) List<String> serviceList,
    @Default([]) List<String> txnStatusList,
    @Default([]) List<String> productList,
    @Default([]) List<String> dateList,
    @Default([]) List<CategoryData> data,
    @Default('') String agentCategory,
    @Default('') String agentUrl,
    @Default('') String agentStatus,
    WlData? wlData,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    @Default('') String category,
    @Default([]) List<SubMenu> subMenueList,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
class SubMenu with _$SubMenu {
  const factory SubMenu({
    @Default('') String actionEvent,
    @Default('') String actionid,
    @Default('') String activeStatus,
    @Default('') String category,
    @Default('') String navigateTo,
    @Default('') String navigateType,
    @Default('') String offerImg,
    @Default('') String offerName,
    @Default('') String tagImage,
    @Default('') String tagName,
    @Default('') String visibility,
  }) = _SubMenu;

  factory SubMenu.fromJson(Map<String, dynamic> json) =>
      _$SubMenuFromJson(json);
}

@freezed
class WlData with _$WlData {
  const factory WlData({
    @Default('') String agentUrl,
    @Default('') String careUrl,
    @Default('') String clientId,
    @Default('') String companyName,
    @Default('') String companyShortName,
    @Default('') String domainName,
    @Default('') String dsUrl,
    @Default('') String helpDeskEmailId,
    @Default('') String helpDeskMobileNo,
    @Default('') String logoImage,
    @Default('') String mailingEmailPassword,
    @Default('') String mailingEmailid,
    @Default([]) List<dynamic> menueDetails,
    @Default('') String mobileAppUrl,
    @Default('') String poweredBy,
    @Default('') String smsTemplate,
    @Default('') String smtpHost,
    @Default('') String smtpPort,
    @Default('') String tickerMessage,
    @Default('') String whatsappNumber,
  }) = _WlData;

  factory WlData.fromJson(Map<String, dynamic> json) =>
      _$WlDataFromJson(json);
}
