void main() {
  final Test test = new Test(name: 3);
  final int getName = test.returnName;
  print("get name ${getName}");
  print(test);
}

class Test {
  int _name;
  Test({required int name})
      : assert(name >= 2, "Hello there is error"),
        this._name = name;
  
  int get returnName{
    return _name;
  }
}
