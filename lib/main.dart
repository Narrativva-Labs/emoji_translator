// Entry point + runApp
import 'package:flutter/material.dart';
import 'app.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

const String sentryDsn = String.fromEnvironment('SENTRY_DSN');

void main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn = sentryDsn;
    },
    appRunner: () => runApp(const EmojiTranslatorApp()),
  );
}