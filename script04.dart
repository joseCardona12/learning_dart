void main() {
  final WindPlant windPlant = new WindPlant(
                                            windPlantName: "N", 
                                            windPlantPower: 100, 
                                            windPlantAbilities: {"crack": "crack"}, 
                                            windPlantType: PlantType.solar);

  windPlant.consumeEnergy();
  windPlant.reduceEnergy(powerUser: 12);
  windPlant.reduceEnergy(powerUser: 12);
  windPlant.reduceEnergy(powerUser: 6);
  windPlant.consumeEnergy();
}

enum PlantType { nuclear, wind, solar, water }

abstract class EnergyPlant {
  String name;
  int power;
  Map<String, dynamic> abilities;
  PlantType type;

  EnergyPlant(
      {required String this.name,
      required int this.power,
      required Map<String, dynamic> this.abilities,
      required PlantType this.type});

  void consumeEnergy();
  (String || svoid) reduceEnergy({required double powerUser});
}

class WindPlant extends EnergyPlant {

  WindPlant({
    required String windPlantName,
    required int windPlantPower,
    required Map<String, dynamic> windPlantAbilities,
    required PlantType windPlantType,
  })
    :super(
      name: windPlantName,
      power: windPlantPower,
      abilities: windPlantAbilities,
      type: windPlantType
    );
  @override
  void consumeEnergy() {
    print(""" 
    NAME: ${name}
    POWER: ${power}
    ABILITIES: ${abilities}
    """);
  }
  @override
  (String, void) reduceEnergy({required double powerUser}) {
    if(powerUser < 12){
      return ("Not is available de powerUser. Try again!");
    }
    power -= powerUser.toInt();
  }

}
