void main() {
  final Hero wolverine = new Hero(name: "Logan", power: "Tele");
  wolverine.greet();
}

class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});

  void greet() {
    print("Hello ${name} you power is: ${power}");
  }
}
