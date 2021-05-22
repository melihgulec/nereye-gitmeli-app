import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nereye_gitmeli_app/Classes/User/Expenses.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class AddExpenseScreen extends StatefulWidget {
  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  DbHelper _dbHelper;
  String expenseTitleValue = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbHelper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Bir Harcama Ekle'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ContainerWithTitle(
                title: 'Harcama ekle',
                widget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text('Harcama Başlığı:'),
                              flex: 1,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '...',
                                    hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  maxLines: null,
                                  style: TextStyle(color: Colors.white),
                                  onChanged: (value) {
                                    setState(() {
                                      expenseTitleValue = value;
                                    });
                                  },
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                        ElevatedButton(
                          child: Text('Kaydet'),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            padding: EdgeInsets.symmetric(horizontal: 110),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            if(expenseTitleValue.trim() == ""){
                              ToastHelper().makeToastMessage('Lütfen harcama başlığını doldurunuz.');
                            }else{
                              _dbHelper.insertItem(
                                Expenses(
                                  expenseTitle: expenseTitleValue,
                                  expenseDate: DateFormat('dd.MM.yyyy')
                                      .format(DateTime.now())
                                ),
                                _dbHelper.expensesTableName
                              );
                              Navigator.pushReplacementNamed(context, myRouteNames.expensesRoute);
                            }
                          },
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
