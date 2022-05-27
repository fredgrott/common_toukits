// Notice that I have slimmed this down from:
//  class Singleton {
//     Singleton._privateConstructor();
//     static final SingletonOne _instance = SingletonOne._privateConstructor();
//
//     factory SingletonOne() {
//        return _instance;
//     }
// }

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
