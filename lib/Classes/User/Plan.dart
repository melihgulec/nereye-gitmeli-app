class Plan {
  int id;
  String planTitle;

  Plan({this.planTitle});

  Map<String, dynamic> toMap(){ // veri eklemek için.
    var map = Map<String, dynamic>();
    map['planTitle'] = planTitle;
    return map;
  }

  Plan.fromMap(Map<String, dynamic> map){
    id = map['id'];
    planTitle = map["planTitle"];
  }
}