import 'package:actividad_04/data/models/plant.dart';

class PlantRepository {
  List<Plant> getAll() {
    return [
      Plant(
        image: "assets/images/image_1.png",
        title: "Samantha",
        country: "Russia",
        price: 440,
      ),
      Plant(
        image: "assets/images/image_2.png",
        title: "Angelica",
        country: "Russia",
        price: 440,
      ),
      Plant(
        image: "assets/images/image_3.png",
        title: "Ortencia",
        country: "Russia",
        price: 440,
      ),
    ];
  }

  List<Plant> getFiltered(titleSearch) {
    return this
        .getAll()
        .where((plant) =>
            plant.title.toLowerCase().contains(titleSearch.toLowerCase()))
        .toList();
  }

  Future<List<Plant>> getAllAsync() {
    // Simulamos la petición a la API con una pequeña demora
    return Future.delayed(Duration(seconds: 4), () => this.getAll());
  }

  Future<List<Plant>> getFilteredAsync(titleSearch) {
    // Simulamos la petición a la API con una pequeña demora
    return Future.delayed(
        Duration(seconds: 4),
        () => this
            .getAll()
            .where((plant) =>
                plant.title.toLowerCase().contains(titleSearch.toLowerCase()))
            .toList());
  }

  Future<List<Plant>> getAllAsyncFailed() {
    // Simulamos la petición a la API con un error
    return Future.delayed(Duration(seconds: 4),
        () => throw Exception('Error al obtener los datos'));
  }
}
