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
    apiKey: 'AIzaSyAJk38s6u0T152P8tfGsmkG3sWpgps88-Q',
    appId: '1:854298776334:web:002b2a524c9c22f813bd5f',
    messagingSenderId: '854298776334',
    projectId: 'chatter-app-33613',
    authDomain: 'chatter-app-33613.firebaseapp.com',
    databaseURL: 'https://chatter-app-33613-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chatter-app-33613.appspot.com',
    measurementId: 'G-5MRS52FM7G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBetQMEWpshq74NnwzPD5PbfQdGcDqr96o',
    appId: '1:854298776334:android:b712914a0d0014fc13bd5f',
    messagingSenderId: '854298776334',
    projectId: 'chatter-app-33613',
    databaseURL: 'https://chatter-app-33613-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chatter-app-33613.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD61hEv0612KsrHEmZDPgZJOnWBwxOHkac',
    appId: '1:854298776334:ios:594fd614205213e513bd5f',
    messagingSenderId: '854298776334',
    projectId: 'chatter-app-33613',
    databaseURL: 'https://chatter-app-33613-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chatter-app-33613.appspot.com',
    iosClientId: '854298776334-dbnteb03288b88dbsgcec7qd6m6o916q.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatterFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD61hEv0612KsrHEmZDPgZJOnWBwxOHkac',
    appId: '1:854298776334:ios:594fd614205213e513bd5f',
    messagingSenderId: '854298776334',
    projectId: 'chatter-app-33613',
    databaseURL: 'https://chatter-app-33613-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chatter-app-33613.appspot.com',
    iosClientId: '854298776334-dbnteb03288b88dbsgcec7qd6m6o916q.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatterFlutter',
  );
}
