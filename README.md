# isWeb_test

 [![Pub version](https://img.shields.io/pub/v/isweb_test.svg)](https://pub.dev/packages/isweb_test)

On Flutter 3.x exist the global variable `kIsWeb` indicating than the application was compiled to run on the web.

On multi platform applications this variable could be used for adapting UI to the different platforms, but, doesn't exist an override for doing test. So, when a test is running, kIsWeb is always false, because the platform that is running the tests is Linux, Windows or Mac.

This packages defines the global variable `debugIsWeb` and the function `isWeb()`. On your code, using the function `isWeb()` instead of `kIwWeb`, give you the possibility to run tests and emulate the web environment with `debugIsWeb`.

The package [test_screen](https://pub.dev/packages/test_screen) uses it for doing web tests.

## Usage

```dart
 @override
  Widget build(BuildContext context) {
    return isWeb()
     ? _webSlider()
     : _defaultSlider();
}
```
