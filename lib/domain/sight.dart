/// Карточка достопримечатальности
class Sight {
  String name; // Название достопримечательности
  double lat; // Координаты места: Широта
  double lon; // Координаты места: Долгота
  String url; // Путь до фотографии в интернете
  String details; // Описание достопримечательности
  String type; // Тип достопримечательности.

  Sight(this.name, this.lat, this.lon, this.url, this.details, this.type);
}
