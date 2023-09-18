library custom_cupertino_page_route;

import 'dart:io';
import 'package:flutter/cupertino.dart';

class CustomCupertinoPageRoute<T> extends CupertinoPageRoute<T> {
  CustomCupertinoPageRoute({
    required super.builder,
    super.title,
    super.settings,
    super.maintainState = true,
    super.fullscreenDialog,
    super.allowSnapshotting = true,
    this.isPopGestureEnabled,
  });

  /// Whether a pop gesture can be started by the user.
  /// Returns true if the user can edge-swipe to a previous route.
  /// By default, this is enabled only on iOS and MacOS.
  final bool? isPopGestureEnabled;

  @override
  bool get hasScopedWillPopCallback => isPopGestureEnabled ?? (Platform.isIOS || Platform.isMacOS);
}
