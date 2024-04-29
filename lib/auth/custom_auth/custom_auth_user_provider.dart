import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SusTradingCoAuthUser {
  SusTradingCoAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SusTradingCoAuthUser> susTradingCoAuthUserSubject =
    BehaviorSubject.seeded(SusTradingCoAuthUser(loggedIn: false));
Stream<SusTradingCoAuthUser> susTradingCoAuthUserStream() =>
    susTradingCoAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
