import '../model/base_models.dart';

import '/core/app/params/base_params.dart';
import '/core/app/errors.dart';

import 'package:fpdart/fpdart.dart';

abstract class UseCase<T extends BaseModel?, P extends BaseParams> {
  Future<Either<Failure, T>> call(P params);
}
