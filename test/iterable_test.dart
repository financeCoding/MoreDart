// Copyright (c) 2013, Lukas Renggli <renggli@gmail.com>

library iterable_test;

import 'package:unittest/unittest.dart';
import 'package:more/iterable.dart';

void main() {
  group('iterable', () {
    test('fibonacci', () {
      expect(fibonacci(0, 1).take(8), [0, 1, 1, 2, 3, 5, 8, 13]);
      expect(fibonacci(1, 1).take(8), [1, 1, 2, 3, 5, 8, 13, 21]);
      expect(fibonacci(1, 0).take(8), [1, 0, 1, 1, 2, 3, 5, 8]);
    });
    test('permutations', () {
      expect(permutations([0, 1, 2]),
          [[0, 1, 2], [0, 2, 1], [1, 0, 2],
           [1, 2, 0], [2, 0, 1], [2, 1, 0]]);
    });
    test('permutations (reverse)', () {
      expect(permutations([2, 1, 0], (a, b) => b - a),
          [[2, 1, 0], [2, 0, 1], [1, 2, 0],
           [1, 0, 2], [0, 2, 1], [0, 1, 2]]);
    });
    test('string', () {
      expect(string('').toList(), []);
      expect(string('a').toList(), ['a']);
      expect(string('ab').toList(), ['a', 'b']);
      expect(string('aA1! ').toList(), ['a', 'A', '1', '!', ' ']);
    });
    test('digits', () {
      expect(digits(0).toList(), [0]);
      expect(digits(1).toList(), [1]);
      expect(digits(12).toList(), [2, 1]);
      expect(digits(123).toList(), [3, 2, 1]);
      expect(digits(1001).toList(), [1, 0, 0, 1]);
      expect(digits(10001).toList(), [1, 0, 0, 0, 1]);
      expect(digits(1000).toList(), [0, 0, 0, 1]);
      expect(digits(10000).toList(), [0, 0, 0, 0, 1]);
    });
  });

}

