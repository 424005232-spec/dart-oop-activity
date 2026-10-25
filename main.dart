mixin RadioPlayer {
  void playRadio() {
    print("Playing music on the radio...");
  }
}

abstract class ServiceCheck {
  void checkStatus();
}

class Vehicle {
  String brand;
  int modelYear;

  Vehicle(this.brand, this.modelYear);

  void start() {
    print("Starting $brand vehicle...");
  }

  void printInfo() {
    print("Brand: $brand, Year: $modelYear");
  }
}

class Car extends Vehicle with RadioPlayer implements ServiceCheck {
  int numDoors;

  Car(String brand, int modelYear, this.numDoors) : super(brand, modelYear);

  @override
  void start() {
    print("Car $brand engine started.");
  }

  @override
  void checkStatus() {
    print("Car status: OK");
  }

  void printCarDetails() {
    printInfo();
    print("Doors: $numDoors");
  }
}

class Motorcycle extends Vehicle implements ServiceCheck {
  bool hasSidecar;

  Motorcycle(String brand, int modelYear, this.hasSidecar)
      : super(brand, modelYear);

  @override
  void start() {
    print("Motorcycle $brand started.");
  }

  @override
  void checkStatus() {
    print("Motorcycle status: OK");
  }

  void printMotorcycleDetails() {
    printInfo();
    print("Has sidecar: $hasSidecar");
  }
}

void main() {
  print("--- Week 10 OOP Activity ---\n");

  Car car1 = Car("Toyota", 2024, 4);
  car1.start();
  car1.playRadio();
  car1.checkStatus();
  car1.printCarDetails();

  print("\n----------------------\n");

  Motorcycle bike1 = Motorcycle("Yamaha", 2023, false);
  bike1.start();
  bike1.checkStatus();
  bike1.printMotorcycleDetails();
}
