class RestModel {
  final String name;
  final String model;
  final String manufacturer;
  final String cost_in_credits;
  final String length;
  final String max_atmosphering_speed;
  final String crew;
  final String passengers;
  final String cargo_capacity;
  final String consumables;
  final String hyperdrive_rating;
  final String MGLT;
  final String starship_class;
  final List films;
  final List pilots;
  final String created;
  final String edited;
  final String url;

  RestModel(
      {this.name,
      this.model,
      this.manufacturer,
      this.cost_in_credits,
      this.length,
      this.max_atmosphering_speed,
      this.crew,
      this.passengers,
      this.cargo_capacity,
      this.consumables,
      this.hyperdrive_rating,
      this.MGLT,
      this.starship_class,
      this.films,
      this.pilots,
      this.created,
      this.edited,
      this.url});

  factory RestModel.fromJson(Map<String, dynamic> json) {
      return new RestModel(
          name: json["name"] as String,
          model: json["model"] as String,
          manufacturer: json["manufacturer"] as String,
          cost_in_credits: json["cost_in_credits"] as String,
          max_atmosphering_speed: json["max_atmosphering_speed"] as String,
          crew: json["crew"] as String,
          passengers: json["passengers"] as String,
          cargo_capacity: json["cargo_capacity"] as String,
          consumables: json["consumables"] as String,
          hyperdrive_rating: json["hyperdrive_rating"] as String,
          MGLT: json["MGLT"] as String,
          starship_class: json["starship_class"] as String,
          films: json["films"] as List,
          pilots: json["pilots"] as List,
          created: json["created"] as String,
          edited: json["edited"] as String,
          url: json["url"] as String,
      );
  }
}
