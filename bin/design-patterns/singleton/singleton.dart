class Singleton {
  static Singleton? _instance;
  static final String _example = "Honda";

  static Singleton getInstance() {
    if (_instance != null) {
      return _instance!;
    }
    return Singleton._internal();
  }

  Singleton._internal();

  static String get example => _example;

  @override
  String toString() => "Hello, my name is $example.";
}

void main() {
  var s = Singleton.getInstance();
  var b = Singleton.getInstance();
  print(s);
  print(b);

  var singletonChecker = identical(s, b)
      ? "We are both the same ${Singleton.example}."
      : "We are NOT the same. I mean, just look at us.";
  print(singletonChecker);
}
