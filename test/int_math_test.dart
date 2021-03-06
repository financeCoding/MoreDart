// Copyright (c) 2013, Lukas Renggli <renggli@gmail.com>

library int_math_test;

import 'package:unittest/unittest.dart';
import 'package:more/int_math.dart';

void main() {
  group('int math', () {
    test('gcd', () {
      expect(gcd(8, 12), 4);
      expect(gcd(12, 8), 4);
      expect(gcd(8, 0), 8);
      expect(gcd(0, 8), 8);
    });
    test('lcm', () {
      expect(lcm(5, 2), 10);
      expect(lcm(2, 5), 10);
      expect(lcm(5, 0), 0);
      expect(lcm(0, 5), 0);
    });
    test('factorial', () {
      expect(factorial(0), 1);
      expect(factorial(1), 1);
      expect(factorial(5), 120);
      expect(factorial(12), 479001600);
      expect(factorial(20), 2432902008176640000);
      expect(factorial(21), 2432902008176640000 * 21);
      expect(factorial(22), 2432902008176640000 * 21 * 22);
    });
    test('binomial', () {
      expect(binomial(7, 0), 1);
      expect(binomial(7, 1), 7);
      expect(binomial(7, 2), 21);
      expect(binomial(7, 3), 35);
      expect(binomial(7, 4), 35);
      expect(binomial(7, 5), 21);
      expect(binomial(7, 6), 7);
      expect(binomial(7, 7), 1);
    });
    test('binomial (bounds)', () {
      expect(binomial(7, -1), 0);
      expect(binomial(7, 8), 0);
    });
    test('pow(x, 0)', () {
      expect(pow(-2, 0), 1);
      expect(pow(-1, 0), 1);
      expect(pow(0, 0), 1);
      expect(pow(1, 0), 1);
      expect(pow(2, 0), 1);
    });
    test('pow(x, 1)', () {
      expect(pow(-2, 1), -2);
      expect(pow(-1, 1), -1);
      expect(pow(0, 1), 0);
      expect(pow(1, 1), 1);
      expect(pow(2, 1), 2);
    });
    test('pow(x, 5)', () {
      expect(pow(-2, 5), -32);
      expect(pow(-1, 5), -1);
      expect(pow(0, 5), 0);
      expect(pow(1, 5), 1);
      expect(pow(2, 5), 32);
    });
    test('pow(x, -2)', () {
      expect(pow(-2, -2), 0.25);
      expect(pow(-1, -2), 1.0);
      expect(pow(1, -2), 1.0);
      expect(pow(2, -2), 0.25);
    });
    test('polynomial', () {
      expect(polynomial([], 10), 0);
      expect(polynomial([1, 2], 10), 21);
      expect(polynomial([1, 2, 3], 10), 321);
      expect(polynomial([1, 2, 3, 4], 10), 4321);
    });
    test('primes', () {
      expect(primesUpTo(10), [2, 3, 5, 7]);
      expect(primesUpTo(20), [2, 3, 5, 7, 11, 13, 17, 19]);
    });
  });
}