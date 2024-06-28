class Person {
  String _name; //สร้างให้เป็นpv

  Person(this._name);

  String get name => _name;
  set name(String name) => _name = name;
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  String get model => _model;
  set model(String model) => _model = model;

  int get speed => _speed;
  set speed(int speed) => _speed = speed;

  void displayEngineInfo() {
    print("Engine Model: $_model");
    print("Max Speed: $_speed km/h");
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  String get brand => _brand;
  set brand(String brand) => _brand = brand;

  String get model => _model;
  set model(String model) => _model = model;

  Person get owner => _owner;
  set owner(Person owner) => _owner = owner;

  Engine get engine => _engine;
  set engine(Engine engine) => _engine = engine;

  void displayCarInfo() {
    print("Car Brand: $_brand");
    print("Car Model: $_model");
    print("Owner: ${_owner.name}");
    print("Engine Info:");
    _engine.displayEngineInfo();
  }

  void run() {
    print("Driving at ${_engine.speed} km/h");
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;
  set color(String color) => _color = color;

  @override
  void run() {
    print("Driving Honda at 120 km/h");
  }

  @override
  void displayCarInfo() {
    print("Car Brand: $brand");
    print("Car Model: $model");
    print("Car Color: $_color");
    print("Owner: ${owner.name}");
    print("Engine Info:");
    engine.displayEngineInfo();
  }
}

void main() {
  Person Anatcha = Person("Anatcha Ch");
  Engine hondaEngine = Engine("VTEC Turbo", 200);
  Car car1 = Car("Toyota", "Corolla", Anatcha, hondaEngine);
  Honda hondaCar = Honda("Honda", "Civic", Anatcha, hondaEngine, "Black");

  print("Car 1 Information:");
  car1.displayCarInfo();
  print("");

  print("Honda Car Information:");
  hondaCar.displayCarInfo();
  print("");

  print("Driving Car 1:");
  car1.run();
  print("");

  print("Driving Honda Car:");
  hondaCar.run();
}
