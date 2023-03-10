import 'package:flutter_test/flutter_test.dart';

import 'package:isweb_test/isweb_test.dart';

void main() {
  test('debugIsWeb', () {
    debugIsWeb = true;
    expect(isWeb(), true);
  });
}
