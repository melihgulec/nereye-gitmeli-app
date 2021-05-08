class Target{
  int id;
  String targetHead;
  String targetDestination;
  int targetDestinationCityId;
  String targetDescription;
  String targetDate;

  Target({this.targetDestination, this.targetDestinationCityId, this.targetDescription, this.targetHead, this.targetDate});

  Map<String, dynamic> toMap(){ // veri eklemek için.
    var map = Map<String, dynamic>();
    map["targetHead"] = targetHead;
    map["targetDestination"] = targetDestination;
    map["targetDestinationCityId"] = targetDestinationCityId;
    map["targetDescription"] = targetDescription;
    map["targetDate"] = targetDate;
    return map;
  }

  Target.fromMap(Map<String, dynamic> map){
    id = map['id'];
    targetHead = map["targetHead"];
    targetDestination = map["targetDestination"];
    targetDestinationCityId = map["targetDestinationCityId"];
    targetDescription = map["targetDescription"];
    targetDate = map["targetDate"];
  }
}