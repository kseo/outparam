// Copyright (c) 2015, Kwang Yul Seo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The outparam library.
///
/// ```dart
/// import 'package:outparam/outparam.dart';
///
/// void foo(Out<int> i) {
///   i.value = 44;
/// }
///
/// main() {
///   Out<int> i = new Out<int>();
///   foo(i);
///   print(i.value); // 44
/// }
/// ```
library outparam;

export 'src/outparam_base.dart';
