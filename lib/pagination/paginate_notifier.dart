//
//
//

import 'package:flutter/material.dart';
import 'package:flutter_lab/pagination/paginate_state.dart';

/// Paginate Notifier
class PaginateNotifier extends ChangeNotifier {
  PaginateState state;
  PaginateNotifier(this.state);

  /// update the state
  update(PaginateState newState) {
    state = newState;
    notifyListeners();
  }
}
