import 'package:flutter/material.dart';

class RefreshListenable extends Listenable {
  VoidCallback? _listener;
  @override
  void addListener(VoidCallback listener) {
    _listener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _listener = null;
  }

  void refresh() {
    _listener?.call();
  }
}

/* Usage */

// final listenable = RefreshListenable();
// ref.listen(xxxProvider, (_, _) {
//   listenable.notify();
// });
