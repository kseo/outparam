// Copyright (c) 2015, Kwang Yul Seo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library outparam.example;

import 'package:outparam/outparam.dart';

void testString(String s, OutParam<bool> containsPeriod,
    OutParam<bool> containsComma, OutParam<bool> containsSemicolon) {
  containsPeriod.value = s.contains('.');
  containsComma.value = s.contains(',');
  containsSemicolon.value = s.contains(';');
}

main() {
  final containsPeriod = new OutParam<bool>();
  final containsComma = new OutParam<bool>();
  final containsSemicolon = new OutParam<bool>();

  testString(
      'Hello, World.', containsPeriod, containsComma, containsSemicolon);

  print(containsPeriod.value); // true
  print(containsComma.value); // true
  print(containsSemicolon.value); // false
}
