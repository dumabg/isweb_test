import 'package:flutter/foundation.dart';

/// This variable is only useful for tests, indicating than the test is running
/// in a web environment. This variable is used by the test_screen
/// (https://pub.dev/packages/test_screen) package.
///
/// In general, therefore, this property should not be used in release builds.
bool debugIsWeb = false;

/// A function that is true if the application was compiled to run on the web or
/// [debugIsWeb] is true
bool isWeb() => kIsWeb || debugIsWeb;
