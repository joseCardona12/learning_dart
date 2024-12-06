void main() {
  final Map<String, dynamic> fromJson = {
    "name": "jose",
    "power": "teletransportation"
  };
  final Hero hero = new Hero.fromJson(fromJson);
  print(hero);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "There is not name",
        power = json["power"] ?? "There is not power";

  @override
  String toString() {
    return ("name ${this.name}, power ${this.power}");
  }
}
