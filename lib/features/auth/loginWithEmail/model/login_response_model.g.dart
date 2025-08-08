// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LoginResponseImpl(
  status: json['status'] as String? ?? '',
  message: json['message'] as String? ?? '',
  fulAgentId: json['fulAgentId'] as String? ?? '',
  agentId: json['agentId'] as String? ?? '',
  Balance: json['Balance'] as String? ?? '',
  mobileNumber: json['mobileNumber'] as String? ?? '',
  appText: json['appText'] as String? ?? '',
  agentName: json['agentName'] as String? ?? '',
  emailId: json['emailId'] as String? ?? '',
  txn_key: json['txn_key'] as String? ?? '',
  version: json['version'] as String? ?? '',
  institution: json['institution'] as String? ?? '',
  dateOfJoining: json['dateOfJoining'] as String? ?? '',
  changePwdFlag: json['changePwdFlag'] as String? ?? '',
  agentKyc: json['agentKyc'] as String? ?? '',
  kycStatus: json['kycStatus'] as String? ?? '',
  planStatus: json['planStatus'] as String? ?? '',
  locationFlag: json['locationFlag'] as String? ?? '',
  serviceBy: json['serviceBy'] as String? ?? '',
  issales: json['issales'] as String? ?? '',
  state: json['state'] as String? ?? '',
  city: json['city'] as String? ?? '',
  pincode: json['pincode'] as String? ?? '',
  distributorId: json['distributorId'] as String? ?? '',
  distributorName: json['distributorName'] as String? ?? '',
  address: json['address'] as String? ?? '',
  distributorMobile: json['distributorMobile'] as String? ?? '',
  issuedOn: json['issuedOn'] as String? ?? '',
  validtill: json['validtill'] as String? ?? '',
  panNumber: json['panNumber'] as String? ?? '',
  clientId: json['clientId'] as String? ?? '',
  salesPersonMobileNo: json['salesPersonMobileNo'] as String? ?? '',
  zone: json['zone'] as String? ?? '',
  MD_id: json['MD_id'] as String? ?? '',
  MD_name: json['MD_name'] as String? ?? '',
  MD_mobileNo: json['MD_mobileNo'] as String? ?? '',
  PG_KYC_Status: json['PG_KYC_Status'] as String? ?? '',
  Razorpay_CC_Limit: json['Razorpay_CC_Limit'] as String? ?? '',
  agreementStatus: json['agreementStatus'] as String? ?? '',
  esignLimit: json['esignLimit'] as String? ?? '',
  ESign_Request_CNT: json['ESign_Request_CNT'] as String? ?? '',
  Onboard_Channel: json['Onboard_Channel'] as String? ?? '',
  Certificate_Name: json['Certificate_Name'] as String? ?? '',
  linkUrl: json['linkUrl'] as String? ?? '',
  ekycflag: json['ekycflag'] as bool? ?? false,
  iciciEkycFlag: json['iciciEkycFlag'] as bool? ?? false,
  rnfi_onboarding_flag: json['rnfi_onboarding_flag'] as bool? ?? false,
  paySp_onboarding_flag: json['paySp_onboarding_flag'] as bool? ?? false,
  paysprint_Phy_Onboarding: json['paysprint_Phy_Onboarding'] as bool? ?? false,
  iserveuKycFlag: json['iserveuKycFlag'] as bool? ?? false,
  airtelekycFlag: json['airtelekycFlag'] as bool? ?? false,
  serviceList:
      (json['serviceList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  txnStatusList:
      (json['txnStatusList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  productList:
      (json['productList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  dateList:
      (json['dateList'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  agentCategory: json['agentCategory'] as String? ?? '',
  agentUrl: json['agentUrl'] as String? ?? '',
  agentStatus: json['agentStatus'] as String? ?? '',
  wlData: json['wlData'] == null
      ? null
      : WlData.fromJson(json['wlData'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'fulAgentId': instance.fulAgentId,
      'agentId': instance.agentId,
      'Balance': instance.Balance,
      'mobileNumber': instance.mobileNumber,
      'appText': instance.appText,
      'agentName': instance.agentName,
      'emailId': instance.emailId,
      'txn_key': instance.txn_key,
      'version': instance.version,
      'institution': instance.institution,
      'dateOfJoining': instance.dateOfJoining,
      'changePwdFlag': instance.changePwdFlag,
      'agentKyc': instance.agentKyc,
      'kycStatus': instance.kycStatus,
      'planStatus': instance.planStatus,
      'locationFlag': instance.locationFlag,
      'serviceBy': instance.serviceBy,
      'issales': instance.issales,
      'state': instance.state,
      'city': instance.city,
      'pincode': instance.pincode,
      'distributorId': instance.distributorId,
      'distributorName': instance.distributorName,
      'address': instance.address,
      'distributorMobile': instance.distributorMobile,
      'issuedOn': instance.issuedOn,
      'validtill': instance.validtill,
      'panNumber': instance.panNumber,
      'clientId': instance.clientId,
      'salesPersonMobileNo': instance.salesPersonMobileNo,
      'zone': instance.zone,
      'MD_id': instance.MD_id,
      'MD_name': instance.MD_name,
      'MD_mobileNo': instance.MD_mobileNo,
      'PG_KYC_Status': instance.PG_KYC_Status,
      'Razorpay_CC_Limit': instance.Razorpay_CC_Limit,
      'agreementStatus': instance.agreementStatus,
      'esignLimit': instance.esignLimit,
      'ESign_Request_CNT': instance.ESign_Request_CNT,
      'Onboard_Channel': instance.Onboard_Channel,
      'Certificate_Name': instance.Certificate_Name,
      'linkUrl': instance.linkUrl,
      'ekycflag': instance.ekycflag,
      'iciciEkycFlag': instance.iciciEkycFlag,
      'rnfi_onboarding_flag': instance.rnfi_onboarding_flag,
      'paySp_onboarding_flag': instance.paySp_onboarding_flag,
      'paysprint_Phy_Onboarding': instance.paysprint_Phy_Onboarding,
      'iserveuKycFlag': instance.iserveuKycFlag,
      'airtelekycFlag': instance.airtelekycFlag,
      'serviceList': instance.serviceList,
      'txnStatusList': instance.txnStatusList,
      'productList': instance.productList,
      'dateList': instance.dateList,
      'data': instance.data,
      'agentCategory': instance.agentCategory,
      'agentUrl': instance.agentUrl,
      'agentStatus': instance.agentStatus,
      'wlData': instance.wlData,
    };

_$CategoryDataImpl _$$CategoryDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDataImpl(
      category: json['category'] as String? ?? '',
      subMenueList:
          (json['subMenueList'] as List<dynamic>?)
              ?.map((e) => SubMenu.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryDataImplToJson(_$CategoryDataImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'subMenueList': instance.subMenueList,
    };

_$SubMenuImpl _$$SubMenuImplFromJson(Map<String, dynamic> json) =>
    _$SubMenuImpl(
      actionEvent: json['actionEvent'] as String? ?? '',
      actionid: json['actionid'] as String? ?? '',
      activeStatus: json['activeStatus'] as String? ?? '',
      category: json['category'] as String? ?? '',
      navigateTo: json['navigateTo'] as String? ?? '',
      navigateType: json['navigateType'] as String? ?? '',
      offerImg: json['offerImg'] as String? ?? '',
      offerName: json['offerName'] as String? ?? '',
      tagImage: json['tagImage'] as String? ?? '',
      tagName: json['tagName'] as String? ?? '',
      visibility: json['visibility'] as String? ?? '',
    );

Map<String, dynamic> _$$SubMenuImplToJson(_$SubMenuImpl instance) =>
    <String, dynamic>{
      'actionEvent': instance.actionEvent,
      'actionid': instance.actionid,
      'activeStatus': instance.activeStatus,
      'category': instance.category,
      'navigateTo': instance.navigateTo,
      'navigateType': instance.navigateType,
      'offerImg': instance.offerImg,
      'offerName': instance.offerName,
      'tagImage': instance.tagImage,
      'tagName': instance.tagName,
      'visibility': instance.visibility,
    };

_$WlDataImpl _$$WlDataImplFromJson(Map<String, dynamic> json) => _$WlDataImpl(
  agentUrl: json['agentUrl'] as String? ?? '',
  careUrl: json['careUrl'] as String? ?? '',
  clientId: json['clientId'] as String? ?? '',
  companyName: json['companyName'] as String? ?? '',
  companyShortName: json['companyShortName'] as String? ?? '',
  domainName: json['domainName'] as String? ?? '',
  dsUrl: json['dsUrl'] as String? ?? '',
  helpDeskEmailId: json['helpDeskEmailId'] as String? ?? '',
  helpDeskMobileNo: json['helpDeskMobileNo'] as String? ?? '',
  logoImage: json['logoImage'] as String? ?? '',
  mailingEmailPassword: json['mailingEmailPassword'] as String? ?? '',
  mailingEmailid: json['mailingEmailid'] as String? ?? '',
  menueDetails: json['menueDetails'] as List<dynamic>? ?? const [],
  mobileAppUrl: json['mobileAppUrl'] as String? ?? '',
  poweredBy: json['poweredBy'] as String? ?? '',
  smsTemplate: json['smsTemplate'] as String? ?? '',
  smtpHost: json['smtpHost'] as String? ?? '',
  smtpPort: json['smtpPort'] as String? ?? '',
  tickerMessage: json['tickerMessage'] as String? ?? '',
  whatsappNumber: json['whatsappNumber'] as String? ?? '',
);

Map<String, dynamic> _$$WlDataImplToJson(_$WlDataImpl instance) =>
    <String, dynamic>{
      'agentUrl': instance.agentUrl,
      'careUrl': instance.careUrl,
      'clientId': instance.clientId,
      'companyName': instance.companyName,
      'companyShortName': instance.companyShortName,
      'domainName': instance.domainName,
      'dsUrl': instance.dsUrl,
      'helpDeskEmailId': instance.helpDeskEmailId,
      'helpDeskMobileNo': instance.helpDeskMobileNo,
      'logoImage': instance.logoImage,
      'mailingEmailPassword': instance.mailingEmailPassword,
      'mailingEmailid': instance.mailingEmailid,
      'menueDetails': instance.menueDetails,
      'mobileAppUrl': instance.mobileAppUrl,
      'poweredBy': instance.poweredBy,
      'smsTemplate': instance.smsTemplate,
      'smtpHost': instance.smtpHost,
      'smtpPort': instance.smtpPort,
      'tickerMessage': instance.tickerMessage,
      'whatsappNumber': instance.whatsappNumber,
    };
