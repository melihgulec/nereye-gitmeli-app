import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/Expenses.dart';
import 'package:nereye_gitmeli_app/Classes/User/ExpensesDetail.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class ExpenseDetailScreen extends StatefulWidget {
  final Expenses expense;

  ExpenseDetailScreen({this.expense});

  @override
  _ExpenseDetailScreenState createState() => _ExpenseDetailScreenState();
}

class _ExpenseDetailScreenState extends State<ExpenseDetailScreen> {
  DbHelper _dbHelper;
  final _aciklamaController = TextEditingController();
  final _miktarController = TextEditingController();

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
        title: Text('${widget.expense.id} numaralı harcamaların'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FutureBuilder(
                future: _dbHelper.getExpensesDetail(widget.expense.id),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(child: CircularProgressIndicator());
                  if (snapshot.data.isEmpty)
                    return Flexible(
                      child: Center(
                        child: Text(
                          'Burada kayıtlı herhangi bir şey yok.\nYeni eleman ekle!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );

                  return Flexible(
                    flex: 9,
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        ExpensesDetail expenseDetail = snapshot.data[index];

                        return ContainerWithTitle(
                          title: 'Harcama: ${expenseDetail.expenseDescription}',
                          widget: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Miktar: ${expenseDetail.expenseMoney}'),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Harcama adı...',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          controller: _aciklamaController,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Miktar...',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          controller: _miktarController,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          if (_aciklamaController.text.trim() == "" && _miktarController.text.trim() == "") {
                            ToastHelper().makeToastMessage(
                                'Harcama adı ve miktarını doldurunuz.');
                          } else if (_aciklamaController.text.trim() == "") {
                            ToastHelper()
                                .makeToastMessage('Harcama adını doldurunuz.');
                          } else if (_miktarController.text.trim() == "") {
                            ToastHelper()
                                .makeToastMessage('Miktarı doldurunuz.');
                          } else {
                            _dbHelper.insertItem(
                                ExpensesDetail(
                                  expenseId: widget.expense.id,
                                  expenseDescription: _aciklamaController.text,
                                  expenseMoney: int.parse(_miktarController.text),
                                ),
                                _dbHelper.expensesDetailTableName);
                            _aciklamaController.clear();
                            _miktarController.clear();
                          }
                        },
                      );
                    },
                    child: Text('Yeni Eleman Ekle'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 110),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
