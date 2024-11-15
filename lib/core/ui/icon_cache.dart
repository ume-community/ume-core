import 'package:flutter/material.dart';
import 'package:ume_core/core/pluggable.dart';

class IconCache {
  static Map<String, Widget> _icons = Map();
  static Widget? icon({
    required Pluggable pluggableInfo,
  }) {
    if (!_icons.containsKey(pluggableInfo.name)) {
      final i = Image(image: pluggableInfo.iconImageProvider);
      _icons.putIfAbsent(pluggableInfo.name, () => i);
    } else if (!_icons.containsKey(pluggableInfo.name)) {
      return Container();
    }
    return _icons[pluggableInfo.name];
  }
}
