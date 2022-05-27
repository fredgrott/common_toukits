// ignore_for_file: prefer_final_locals

import 'package:singleton_factory/singleton_factory.dart';
import 'package:test/test.dart';

// Note: So why do we set up testing for oop patterns? To help put the meta form of 
//       the oop pattern in our brains.

void main() {
  //test('calculate', () {
  //expect(calculate(), 42);
  //});

  test('singleton', () {
    var s1 = Singleton();
    var s2 = Singleton();

    expect(s1, s2);
  });
}
