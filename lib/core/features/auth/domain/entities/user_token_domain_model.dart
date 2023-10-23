import '../../../../app/model/base_models.dart';
import '../../../../app/model/to_json_convertable.dart';

class UserTokenDomainModel extends BaseModel implements ToJsonConvertable {
  const UserTokenDomainModel({required this.token});

  final String token;

  @override
  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }

  @override
  List<Object?> get props => [token];
}
