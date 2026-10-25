mixin MusicPlayer {
  void playMusic() {
    print("♪ Playing background music on the vehicle stereo...");
  }
}

abstract class Maintenance {
  void checkOil();
}

class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void startEngine() {
    print("The $brand vehicle engine is starting...");
  }

  void showDetails() {
    print("Brand: $brand | Year: $year");
  }
}

class Car extends Vehicle with MusicPlayer implements Maintenance {
  int doors;

  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void startEngine() {
    print("🚗 The $brand car roars to life with a push-button start!");
  }

  @override
  void checkOil() {
    print("Checking the car's engine oil... Oil level is normal.");
  }

  void showCarInfo() {
    showDetails();
    print("Number of Doors: $doors");
  }
}

class Motorcycle extends Vehicle implements Maintenance {
  bool hasSidecar;

  Motorcycle(String brand, int year, this.hasSidecar) : super(brand, year);

  @override
  void startEngine() {
    print("🏍️ The $brand motorcycle revs up with an electric kick start!");
  }

  @override
  void checkOil() {
    print("Checking the motorcycle's engine oil... Oil is clean.");
  }

  void showMotorcycleInfo() {
    showDetails();
    print("Has Sidecar: $hasSidecar");
  }
}

void main() {
  print("=== NTC PC16 Week 10: OOP Demonstration ===\n");

  Car myCar = Car("Toyota", 2024, 4);
  myCar.startEngine();
  myCar.playMusic();
  myCar.checkOil();
  myCar.showCarInfo();

  print("\n-------------------------------------------\n");

  Motorcycle myBike = Motorcycle("Yamaha", 2023, false);
  myBike.startEngine();
  myBike.checkOil();
  myBike.showMotorcycleInfo();
}
