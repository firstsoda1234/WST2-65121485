void main() {
    print('Example for using Person class');
    // Create an instance of Person
    Person owner = Person();
    
    // Spicify Driver's name by Seter
    owner.setName('Jack sparrow');
    print('\nDisplay by geter');
    // Display driver's name by Geter
    print("Driver's name: ${owner.getName()}");
    print("-"*50);
  
    print('Example for using Engine class');
    // Create an instance of Engine
    Engine engine = Engine();
    // Set the engine-model
    engine.setModel('3.0 L 6-cylinder');
    // Set the maximum of engine
    engine.setSpeed(250);
    engine.displayEngineInfo();
    // Set a new maximum of engine
    engine.setSpeed(200);
    // Display Engine using Geter
    print('\nDisplay by geter');
    print('Geter engine model:${engine.getModel()}, speed: ${engine.getSpeed()}');
    print("-"*50);
    
    // Create an instance of Car using constructor with specifying what car's needed
    print('Example for using Car class');
    Car car = Car('Toyota', 'Supra', owner, engine);
    
    print('-- Before change brand ,model,owner, engine of the car --');
    // Display engine information     
    car.getEngine().displayEngineInfo();
    // Display car information before changing
    car.displayCarInfo();
  
    print('\n-- After change brand and model of the car --');
    // Change name's brand
    car.setBrand('bentley');
    // Change name's model
    car.setCarModel('Continental GT');
    // Change driver's name
    car.getOwner().setName('Martin ben');
    // Change engine model and speed
    car.getEngine().setModel('V model');
    car.getEngine().setSpeed(318);
    // Display car information
    car.displayCarInfo();
    
    print('\nDisplay by geter');
    // Display by geter
    print("Geter Car, Brand:${car.getBrand()} , Model:${car.getCarModel()}\n"
    "Owner:${car.getOwner().getName()} , Engine model:${car.getEngine().getModel()} , Engine speed:${car.getEngine().getSpeed()}");
    
    print("-"*50);
    // ------------------------------------------------------------------
    print('Example for using Honda class');  
  
    // Create an instance of Person of 2
    Person owner2 = Person();
    // Set driver's name of 2
    owner2.setName('Phongsiri Keapan');
    // Create an instance of Engine of 2
    Engine engine2 = Engine();
    // Set the engine-model of 2
    engine2.setModel('1.5 L 4-cylinder flex-fuel');
    // Set the maximum of engine of 2
    engine2.setSpeed(208);
    // Create an instance of Honda
    Honda honda = Honda('Honda', 'Civic', owner2, engine2, 'Red');
    print('-- Before change ,model, owner, engine and color of the honda --');
    // Display Honda car information
    honda.displayCarInfo();
  
    print('\n-- After change ,model, owner, engine and color of the honda --');
    
    // Change the new honda's model
    honda.setCarModel('Amaze');
    // Change the new honda's color
    honda.setColor('Meteoroid Grey Metallic');
    // Change the new honda's engine-model
    honda.getEngine().setModel('4 Cylinders Inline,1199 cc');
    // Change the new honda's engine-speed
    honda.getEngine().setSpeed(160);
  
    honda.displayCarInfo();
  
    print('\nDisplay by geter');
    print("Geter Car, Brand:${honda.getBrand()} , Model:${honda.getCarModel()}\n"
    "Owner:${honda.getOwner().getName()} , Engine model:${honda.getEngine().getModel()} , Engine speed:${honda.getEngine().getSpeed()}, Color:${honda.getColor()}");
    
    // Start driving
    honda.run();
    
    // ------------------------------------------------------------------
}

class Person {
  var _name; // private variable

  // Getter for name
  getName() {
    return _name;
  }

  // Setter for name
  setName(String name) {
    _name = name;
  }
  
}

class Engine {
  var _model; // private variable
  var _speed; // private variable

  // Getter for model
  getModel() {
    return _model;
  }

  // Setter for model
  setModel(String value) {
    _model = value;
  }

  // Getter for speed
  getSpeed() {
    return _speed;
  }

  // Setter for speed
  setSpeed(int value) {
    _speed = value;
  }

  void displayEngineInfo() {
    print("Engine Model: $_model , Speed: $_speed");
  }
}

class Car {
  String _brand; // private variable
  String _model; // private variable
  Person _owner; // private variable
  Engine _engine; // private variable

  Car(this._brand, this._model, this._owner, this._engine);

  // Getter for brand
  getBrand() {
    return _brand;
  }
  
  // Getter for brand
  getCarModel() {
    return _model;
  }

  // Getter for owner
  getOwner() {
    return _owner;
  }

  // Getter for engine
  getEngine() {
    return _engine;
  }
  
  // Setter for brand
  setBrand(value) {
    this._brand = value;
  }
  // Setter for brand
  setCarModel(value) {
    this._model = value;
  }

  // Detail of cars
  void displayCarInfo() {
    print('Car Information:');
    print('Brand: $_brand');
    print('Model: $_model');
    print('Owner: ${_owner.getName()}');
    print('Engine Model: ${_engine.getModel()}');
    print('Engine Speed: ${_engine.getSpeed()} km/h');
  }

  // Start driving run()
  void run() {
    print('The car is running at ${_engine.getSpeed()} km/h');
  }
}

class Honda extends Car {
  String _color; // private variable

  // Constructor of Honda class
  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  // Getter for color
  getColor() {
    return _color;
  }

  // Setter for color
  setColor(color) {
    _color = color;
  }

  // Override run() method in Honda class
  @override
  void run() {
    print('The Honda car is running at 120 km/h');
  }

  // Override displayCarInfo() method in Honda class
  @override
  void displayCarInfo() {
    super.displayCarInfo();
    print('Color: $_color\n');
  }
}