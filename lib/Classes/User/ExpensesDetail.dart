class ExpensesDetail{
  int id;
  int expenseId;
  String expenseDescription;
  int expenseMoney;

  ExpensesDetail({this.id, this.expenseId, this.expenseDescription, this.expenseMoney});

  Map<String, dynamic> toMap(){ // veri eklemek için.
    var map = Map<String, dynamic>();
    map['expenseId'] = expenseId;
    map['expenseDescription'] = expenseDescription;
    map['expenseMoney'] = expenseMoney;
    return map;
  }

  ExpensesDetail.fromMap(Map<String, dynamic> map){
    id = map['id'];
    expenseId = map["expenseId"];
    expenseDescription = map["expenseDescription"];
    expenseMoney = map["expenseMoney"];
  }
}