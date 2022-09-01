// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBztLxCAspSkGX_rUHMToxvnEKoNKPRN74',
    appId: '1:322115519424:web:88de71b7a1f5e1fd863e25',
    messagingSenderId: '322115519424',
    projectId: 'mylez-lynx-chat',
    authDomain: 'mylez-lynx-chat.firebaseapp.com',
    storageBucket: 'mylez-lynx-chat.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAif_Bg6yX47gjNjMBSE2NXc2FpgM2KdX0',
    appId: '1:322115519424:android:10a648036b80874b863e25',
    messagingSenderId: '322115519424',
    projectId: 'mylez-lynx-chat',
    storageBucket: 'mylez-lynx-chat.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBia5yTWNxsHr5vYiN-avqc7xSpaXve2Do',
    appId: '1:322115519424:ios:e84f70e15f14e0d7863e25',
    messagingSenderId: '322115519424',
    projectId: 'mylez-lynx-chat',
    storageBucket: 'mylez-lynx-chat.appspot.com',
    iosClientId: '322115519424-ppaga5guek4cddqpks0oodo1f5nm7tur.apps.googleusercontent.com',
    iosBundleId: 'com.example.lynx',
  );
}
