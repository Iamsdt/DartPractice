class BasicCar {
  String _name;
  String _model;
  String _year;

  BasicCar([this._name, this._model, this._year]);

  getCarDetails() {
    "Car name:$_name, model:$_model year: $_year";
  }
}

class SuperCar extends BasicCar{

  SuperCar(var battery){

  }

}
