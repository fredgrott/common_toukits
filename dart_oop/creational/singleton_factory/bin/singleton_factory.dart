
// ignore_for_file: prefer_final_locals, avoid_print

import 'package:singleton_factory/singleton_factory.dart';

void main() {
  var s1 = Singleton();
  var s2 = Singleton();
  print(identical(s1, s2)); // true
  print(s1 == s2); // true
}
