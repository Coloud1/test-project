import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:test_prj_ivan/app/service/session_service/session_status.dart';

class SessionService extends ChangeNotifier {
  SessionStatus _sessionStatus = SessionStatus.closed;

  SessionStatus get sessionStatus => _sessionStatus;

  Future<void> openSession() async {
    _sessionStatus = SessionStatus.open;
    notifyListeners();
  }

  Future<void> closeSession() async {
    _sessionStatus = SessionStatus.closed;
    notifyListeners();
  }
}
