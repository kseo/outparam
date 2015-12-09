// Copyright (c) 2015, Kwang Yul Seo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library outparam.base;

class OutParam<T> {
  T _value;

  /// Returns the [value] set by the called method.
  ///
  /// Returns `null` if the value is not set by the called method.
  T get value => _value;

  /// Sets the value to [newValue].
  ///
  /// Although variables passed as out arguments do not have to be initialized
  /// before being passed, the called method is required to assign a value
  /// before the method returns.
  void set value(T newValue) {
    _value = newValue;
  }
}
