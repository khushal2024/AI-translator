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
    apiKey: 'AIzaSyArSXTTZ0zxsfxh-KzC9plMRE-r3PZ1LiA',
    appId: '1:229849016831:web:c400215f4dd69533099fca',
    messagingSenderId: '229849016831',
    projectId: 'mlproj-62acc',
    authDomain: 'mlproj-62acc.firebaseapp.com',
    storageBucket: 'mlproj-62acc.appspot.com',
    measurementId: 'G-3XDC285G0Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYGm05wiWnEkDLOUKiuoJ5EALq-nHYt9c',
    appId: '1:229849016831:android:7ef128d39d81b51e099fca',
    messagingSenderId: '229849016831',
    projectId: 'mlproj-62acc',
    storageBucket: 'mlproj-62acc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJzkcZwuqcooIu-4LDiuVPgCtMRLFwZmE',
    appId: '1:229849016831:ios:a62326ba0b76fad4099fca',
    messagingSenderId: '229849016831',
    projectId: 'mlproj-62acc',
    storageBucket: 'mlproj-62acc.appspot.com',
    iosClientId: '229849016831-g62vgb5buk36ciam0c4da0po67qdcueq.apps.googleusercontent.com',
    iosBundleId: 'com.example.aiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJzkcZwuqcooIu-4LDiuVPgCtMRLFwZmE',
    appId: '1:229849016831:ios:f03ac5ccdae40d7c099fca',
    messagingSenderId: '229849016831',
    projectId: 'mlproj-62acc',
    storageBucket: 'mlproj-62acc.appspot.com',
    iosClientId: '229849016831-17h074bt0cvlrelo3lvks5dmok25q068.apps.googleusercontent.com',
    iosBundleId: 'com.example.aiApp.RunnerTests',
  );
}
