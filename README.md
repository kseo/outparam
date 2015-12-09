# outparam

A library providing support for out parameters in Dart.

[![Build Status](https://travis-ci.org/kseo/outparam.svg)](https://travis-ci.org/kseo/outparam)
[![Coverage Status](https://coveralls.io/repos/kseo/outparam/badge.svg?branch=master&service=github)](https://coveralls.io/github/kseo/outparam?branch=master)

## Usage

A simple usage example:

```dart
import 'package:outparam/outparam.dart';

void foo(OutParam<int> i) {
  i.value = 44;
}

main() {
  OutParam<int> i = new OutParam<int>();
  foo(i);
  print(i.value); // 44
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/kseo/outparam/issues
