import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin PostFrameMixin<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  void postFrame(void Function() callback) =>
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          if (mounted) callback();
        },
      );
}
