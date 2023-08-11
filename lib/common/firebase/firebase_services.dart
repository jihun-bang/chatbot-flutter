import 'dart:isolate';

import 'package:chatbot/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

mixin FirebaseServices {
  static Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    if (!kIsWeb) {
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(!kDebugMode);
      Isolate.current.addErrorListener(
        RawReceivePort((List<dynamic> pair) async {
          final List<dynamic> errorAndStacktrace = pair;
          await FirebaseCrashlytics.instance.recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last as StackTrace,
          );
        }).sendPort,
      );
    }
  }
}
