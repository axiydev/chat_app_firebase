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
        return macos;
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
    apiKey: 'AIzaSyCIyI5S2amUaHU0hNgbqz-EKm9iSeOuNk4',
    appId: '1:769687183612:web:65a564a560e2aa421bf779',
    messagingSenderId: '769687183612',
    projectId: 'chatappexample-f9fe0',
    authDomain: 'chatappexample-f9fe0.firebaseapp.com',
    storageBucket: 'chatappexample-f9fe0.appspot.com',
    measurementId: 'G-48RYDPSHNK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAANfOHYU-WNRrjrrUIy6VPhmyItdIVny8',
    appId: '1:769687183612:android:84874a0d05f96b461bf779',
    messagingSenderId: '769687183612',
    projectId: 'chatappexample-f9fe0',
    storageBucket: 'chatappexample-f9fe0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA82AxAo92Cr5vaCqeq0i6X813hqYjmMNk',
    appId: '1:769687183612:ios:6b7c01a7c822caba1bf779',
    messagingSenderId: '769687183612',
    projectId: 'chatappexample-f9fe0',
    storageBucket: 'chatappexample-f9fe0.appspot.com',
    iosClientId: '769687183612-1heb2tc3sh22kenq6mqhstd18jsdhpvs.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatAppFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA82AxAo92Cr5vaCqeq0i6X813hqYjmMNk',
    appId: '1:769687183612:ios:6b7c01a7c822caba1bf779',
    messagingSenderId: '769687183612',
    projectId: 'chatappexample-f9fe0',
    storageBucket: 'chatappexample-f9fe0.appspot.com',
    iosClientId: '769687183612-1heb2tc3sh22kenq6mqhstd18jsdhpvs.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatAppFirebase',
  );
}
