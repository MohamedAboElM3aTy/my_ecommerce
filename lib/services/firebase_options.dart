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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc0H0BkN5xzHhO_v0uvL2sBqCD8OTHZdc',
    appId: '1:901273255979:android:b3c80b8ee204a7c5a6ea6e',
    messagingSenderId: '901273255979',
    projectId: 'flutter-ecommerce-73f9d',
    storageBucket: 'flutter-ecommerce-73f9d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAvDJ2exmaZ6dETKrWCVJIXMRHThFoEcTU',
    appId: '1:901273255979:ios:04798361c77fc63fa6ea6e',
    messagingSenderId: '901273255979',
    projectId: 'flutter-ecommerce-73f9d',
    storageBucket: 'flutter-ecommerce-73f9d.appspot.com',
    iosClientId: '901273255979-etcbshl1p05s15aq10uimtfcoh8uifh6.apps.googleusercontent.com',
    iosBundleId: 'com.example.myEcommerce',
  );
}
