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
    apiKey: 'AIzaSyAmjo-BYQLFYRC7K8xziUF79E9RBVcgiOY',
    appId: '1:399988660476:web:d6b71a0138376514e9df79',
    messagingSenderId: '399988660476',
    projectId: 'addicfree-d6cff',
    authDomain: 'addicfree-d6cff.firebaseapp.com',
    storageBucket: 'addicfree-d6cff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsmJ-Rr5beVee_gE_wG5-sEUX0JHcRRBw',
    appId: '1:399988660476:android:ad67156f7da468c6e9df79',
    messagingSenderId: '399988660476',
    projectId: 'addicfree-d6cff',
    storageBucket: 'addicfree-d6cff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBVzdQs_nV05UtR14VrVZYseovXmUUl_SI',
    appId: '1:399988660476:ios:0cd3f2815991a7b8e9df79',
    messagingSenderId: '399988660476',
    projectId: 'addicfree-d6cff',
    storageBucket: 'addicfree-d6cff.appspot.com',
    iosClientId: '399988660476-gid2a9jphl8bbmtfocv34vsn16kmmaq6.apps.googleusercontent.com',
    iosBundleId: 'addicfree.example.addicfreeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBVzdQs_nV05UtR14VrVZYseovXmUUl_SI',
    appId: '1:399988660476:ios:b5fa771dec55ca23e9df79',
    messagingSenderId: '399988660476',
    projectId: 'addicfree-d6cff',
    storageBucket: 'addicfree-d6cff.appspot.com',
    iosClientId: '399988660476-4m8m9qhjlj3dmkfq5sn13ggaqbsg5b8r.apps.googleusercontent.com',
    iosBundleId: 'addicfree.example.addicfreeApp.RunnerTests',
  );
}
