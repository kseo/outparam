// Copyright (c) 2015, Kwang Yul Seo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library outparam.test;

import 'package:outparam/outparam.dart';
import 'package:test/test.dart';

void testString(String s, OutParam<bool> containsPeriod,
    OutParam<bool> containsComma, OutParam<bool> containsSemicolon) {
  containsPeriod.value = s.contains('.');
  containsComma.value = s.contains(',');
  containsSemicolon.value = s.contains(';');
}

void square(int i, OutParam<int> result) {
  result.value = i * i;
}

void main() {
  group('OutParam tests', () {
    test('single out param', () {
      final result = new OutParam<int>();
      square(3, result);
      expect(result.value, equals(9));
    });

    test('multiple out params', () {
      final containsPeriod = new OutParam<bool>();
      final containsComma = new OutParam<bool>();
      final containsSemicolon = new OutParam<bool>();

      testString(
          'Hello, World.', containsPeriod, containsComma, containsSemicolon);
      expect(containsPeriod.value, isTrue);
      expect(containsComma.value, isTrue);
      expect(containsSemicolon.value, isFalse);
    });
  });
}
