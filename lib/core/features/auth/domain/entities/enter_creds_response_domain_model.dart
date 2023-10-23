import '../../../../app/model/base_models.dart';

class EnterCredsResponseDomainModel extends BaseModel {
  const EnterCredsResponseDomainModel({required this.token});

  final String token;

  @override
  List<Object?> get props => [token];
}
