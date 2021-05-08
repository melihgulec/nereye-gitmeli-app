class Favorite{
  int cityId;

  Favorite({this.cityId});

  Map<String, dynamic> toMap(){ // veri eklemek için.
    var map = Map<String, dynamic>();
    map["cityId"] = cityId;
    return map;
  }

  Favorite.fromMap(Map<String, dynamic> map){
    cityId = map['cityId'];
  }
}