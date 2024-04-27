import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD9h7waIw3lcLv_9Td4TIfo5moCvixZZN8",
            authDomain: "sus-trading-co-9h84au.firebaseapp.com",
            projectId: "sus-trading-co-9h84au",
            storageBucket: "sus-trading-co-9h84au.appspot.com",
            messagingSenderId: "835453542101",
            appId: "1:835453542101:web:768386ca428b07cc294c5c"));
  } else {
    await Firebase.initializeApp();
  }
}
