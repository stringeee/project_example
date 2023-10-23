import 'package:fpdart/fpdart.dart';

import '../model/base_models.dart';
import '../params/base_params.dart';

abstract class Repository<T extends BaseModel, P extends BaseParams> {
  Future<Either<Exception, T>> call(P params);
}
