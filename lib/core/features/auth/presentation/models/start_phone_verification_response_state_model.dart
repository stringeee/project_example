import '../../../../app/model/base_models.dart';

class StartPhoneVerificationResponseStateModel extends BaseModel {
  const StartPhoneVerificationResponseStateModel(
      {required this.phone, required this.code});

  final String phone;
  final String code;

  @override
  List<Object?> get props => [phone, code];
}
