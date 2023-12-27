class Car {
  String make;
  String model;
  String color;
  int year;

  Car(this.make, this.model, this.color, this.year);

  @override
  String toString() {
    return 'Car: $year $color $make $model';
  }
}

abstract class CarBuilder {
  void buildMake();
  void buildModel();
  void buildColor();
  void buildYear();
  Car getResult();
}

class CarBuilderImpl implements CarBuilder {
  Car car = Car('', '', '', 0);

  @override
  void buildMake() {
    car.make = 'Hyundai';
  }

  @override
  void buildModel() {
    car.model = 'Elentra';
  }

  @override
  void buildColor() {
    car.color = 'Black';
  }

  @override
  void buildYear() {
    car.year = 2024;
  }

  @override
  Car getResult() {
    return car;
  }
}

class CarDirector {
  CarBuilder builder;

  CarDirector(this.builder);

  Car construct() {
    builder.buildMake();
    builder.buildModel();
    builder.buildColor();
    builder.buildYear();
    return builder.getResult();
  }
}

void main() {
  CarBuilder builder = CarBuilderImpl();

  CarDirector director = CarDirector(builder);

  Car car = director.construct();

  print(car);
}
