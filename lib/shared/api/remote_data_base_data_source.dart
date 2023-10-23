import '../../core/app/params/base_params.dart';

abstract class RemoteDataBaseDataSource {
  T getData<T>(BaseParams params);
  T postData<T>(BaseParams params);
}
