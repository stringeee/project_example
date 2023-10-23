import 'package:logger/logger.dart';

import '../../core/app/injector/injector.dart';

mixin LoggerMixin {
  final log = injector<Logger>();
}
