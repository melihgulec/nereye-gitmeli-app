import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';
import 'package:nereye_gitmeli_app/Classes/User/Expenses.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class ExpensesScreen extends StatefulWidget {
  @override
  _ExpensesScreenState createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  DbHelper _dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbHelper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pushReplacementNamed(context, myRouteNames.addExpenseRoute);
        },
      ),
      appBar: AppBar(
        title: Text('Gezi Harcamaların'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: _dbHelper.getExpenses(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              if (snapshot.data.isEmpty)
                return Center(
                  child: Text(
                    'Henüz harcama listesi oluşturmamışsın.\nEklemek için sağ alttaki butonu kullan.',
                    textAlign: TextAlign.center,
                  ),
                );

              return ListView.separated(
                separatorBuilder: (context, index){
                  return Divider();
                },
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Expenses expense = snapshot.data[index];
                  return Dismissible(
                    onDismissed: (direction) {
                      print(direction);
                      setState(() {
                        _dbHelper.removeExpense(expense.id);
                        _dbHelper.removeExpensesDetailByExpenseId(expense.id);
                      });
                      ToastHelper()
                          .makeToastMessage("${expense.expenseTitle} kaldırıldı.");
                    },
                    background: Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.cancel,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.cancel,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    key: UniqueKey(),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.pushNamed(context, myRouteNames.expenseDetailRoute,
                            arguments: expense);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${expense.id} - ${expense.expenseTitle}',
                                style: TextStyle(color: Colors.red, fontSize: 18),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Divider(
                                height: 15,
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.date_range),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '${expense.expenseDate}',
                                          style: TextStyle(color: Colors.red),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.account_balance_wallet),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        FutureBuilder(
                                          future: _dbHelper.getTotalById('ExpensesDetail', 'expenseMoney', expense.id, 'expenseId'),
                                          builder: (context, snapshot) {
                                            if (!snapshot.hasData)
                                              return Text(
                                                '0',
                                                style: TextStyle(color: Colors.red),
                                              );

                                            return Text(
                                              '${snapshot.data}',
                                              style: TextStyle(color: Colors.red),
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          )),
    );
  }
}