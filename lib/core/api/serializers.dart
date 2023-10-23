import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'auth/models/enter_creds_response.dart';
import 'auth/models/finish_phone_verification_response.dart';
import 'auth/models/user_token.dart';
import 'auth/models/phone_verification_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  StartPhoneVerificationResponse,
  UserToken,
  FinishPhoneVerificationResponse,
  EnterCredsResponse
])
Serializers serializers = (_$serializers.toBuilder()).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
