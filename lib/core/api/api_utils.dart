import 'dart:typed_data';

import 'package:built_value/serializer.dart';

dynamic encodeQueryParameter({
  required Serializers serializers,
  required dynamic value,
  required FullType type,
}) {
  if (value == null) {
    return '';
  }
  if (value is String || value is num || value is bool) {
    return value;
  }
  if (value is Uint8List) {
    // Currently not sure how to serialize this
    return value;
  }
  final serialized = serializers.serialize(
    value as Object,
    specifiedType: type,
  );
  if (serialized == null) {
    return '';
  }
  if (serialized is String) {
    return serialized;
  }
  return serialized;
}
