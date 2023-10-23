import '../../../../app/model/base_models.dart';

class StartPhoneVerificationResponseDomainModel extends BaseModel {
  const StartPhoneVerificationResponseDomainModel(
      {required this.phone, required this.code});

  final String phone;
  final String code;

  @override
  List<Object?> get props => [phone, code];
}
