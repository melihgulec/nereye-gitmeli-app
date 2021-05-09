class PlanDetail{
  int id;
  int planId;
  String description;
  int status;

  PlanDetail({this.planId, this.description, this.status});

  Map<String, dynamic> toMap(){ // veri eklemek için.
    var map = Map<String, dynamic>();
    map['planId'] = planId;
    map['description'] = description;
    map['status'] = status;
    return map;
  }

  PlanDetail.fromMap(Map<String, dynamic> map){
    id = map['id'];
    planId = map["planId"];
    description = map["description"];
    status = map["status"];
  }
}