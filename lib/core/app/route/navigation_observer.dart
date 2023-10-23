import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/mixins/logger_mixin.dart';

class NavigationObserver extends AutoRouterObserver with LoggerMixin {
  @override
  void didPush(Route route, Route? previousRoute) {
    log.d('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log.d('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log.d('Tab route re-visited: ${route.name}');
  }
}
