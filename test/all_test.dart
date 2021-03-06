// Copyright (c) 2013, Lukas Renggli <renggli@gmail.com>

library all_test;

import 'bit_set_test.dart' as bit_set_test;
import 'char_matcher_test.dart' as char_matcher_test;
import 'fraction_test.dart' as fraction_test;
import 'int_math_test.dart' as int_math_test;
import 'iterable_test.dart' as iterable_test;
import 'range_test.dart' as range_test;

void main() {
  bit_set_test.main();
  char_matcher_test.main();
  fraction_test.main();
  int_math_test.main();
  iterable_test.main();
  range_test.main();
}
