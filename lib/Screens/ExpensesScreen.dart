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

              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Expenses expense = snapshot.data[index];

                  return ExpenseWidget(
                    expense: expense,
                    id: expense.id,
                    expenseTitle: expense.expenseTitle,
                    expenseDate: expense.expenseDate,
                  );
                },
              );
            },
          )),
    );
  }
}

class ExpenseWidget extends StatefulWidget {
  Expenses expense;
  int id;
  String expenseTitle;
  String expenseDate;

  ExpenseWidget({this.id, this.expenseTitle, this.expenseDate, this.expense});

  @override
  _ExpenseWidgetState createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
  DbHelper _dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbHelper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Dismissible(
        onDismissed: (direction) {
          _dbHelper.removeExpensesDetailByExpenseId(widget.expense.id);
          _dbHelper.removeExpense(widget.expense.id);
          ToastHelper()
              .makeToastMessage("${widget.expense.expenseTitle} kaldırıldı.");
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
        key: ValueKey(widget.expense.id),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.pushNamed(context, myRouteNames.expenseDetailRoute,
                arguments: widget.expense);
          },
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${widget.id} - ${widget.expenseTitle}',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 15,
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
                              '${widget.expenseDate}',
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
                              future: _dbHelper.getTotalById('ExpensesDetail', 'expenseMoney', widget.id, 'expenseId'),
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
      ),
    );
  }
}
