class SingletonV2 {
  static SingletonV2? _instance;
  static final String _example = "Honda";

  factory SingletonV2.getInstance() {
    _instance ??= SingletonV2._internal();
    return _instance!;
  }

  SingletonV2._internal();

  static String get example => _example;

  @override
  String toString() => "Hello, my name is $example.";
}

class Singleton {
  Singleton._internal();

  static Singleton? _instance;

  factory Singleton() {
    _instance ??= Singleton._internal();
    return _instance!;
  }

  void printMessage() {
    print("Singleton instance is working!");
  }
}

void main() {
  Singleton instance1 = Singleton();
  Singleton instance2 = Singleton();

  var a = SingletonV2.getInstance();
  var b = SingletonV2.getInstance();

  print(identical(instance1, instance2)); // Output: true

  instance1.printMessage();
  instance2.printMessage();

  print(identical(a, b)); // Output: true
}
