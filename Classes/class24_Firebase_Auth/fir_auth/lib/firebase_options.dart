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
    apiKey: 'AIzaSyBIdy2sm5In6FL2-AsrTEv2CHMNix068Ic',
    appId: '1:583225051699:web:7413e8fb2b336f7803b146',
    messagingSenderId: '583225051699',
    projectId: 'flutter-authentication-smit',
    authDomain: 'flutter-authentication-smit.firebaseapp.com',
    storageBucket: 'flutter-authentication-smit.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyG1tGyJphBqLTJyv97xVByJh1RlmJGnw',
    appId: '1:583225051699:android:7524d898fba49de303b146',
    messagingSenderId: '583225051699',
    projectId: 'flutter-authentication-smit',
    storageBucket: 'flutter-authentication-smit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBh7sPFPTd8cMf8AC9MvzsUKMtzK5z-ilQ',
    appId: '1:583225051699:ios:fd946d79a39733eb03b146',
    messagingSenderId: '583225051699',
    projectId: 'flutter-authentication-smit',
    storageBucket: 'flutter-authentication-smit.appspot.com',
    iosBundleId: 'com.example.firAuth',
  );
}
