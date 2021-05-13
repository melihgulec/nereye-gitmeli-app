class Expenses{
  int id;
  String expenseTitle;
  String expenseDate;

  Expenses({this.id, this.expenseTitle, this.expenseDate});

  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    map['expenseTitle'] = expenseTitle;
    map['expenseDate'] = expenseDate;
    return map;
  }

  Expenses.fromMap(Map<String, dynamic> map){
    id = map['id'];
    expenseTitle = map["expenseTitle"];
    expenseDate = map["expenseDate"];
  }
}