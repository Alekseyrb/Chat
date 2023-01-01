import 'package:chat/app.dart';
import 'package:chat/bootstrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyA9VuUdoOBp01Pg-pwF-nnHzjzoBXvfV18',
      appId: '1:326810700179:android:97656961164c1ccff9c066',
      messagingSenderId: '326810700179',
      projectId: 'chat-5e227',
      storageBucket: 'chat-5e227.appspot.com',
    ),
  );

  await setupIoc();
  runApp(const App());
}
