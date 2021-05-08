import 'package:flutter/material.dart';

class ExpensesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gezi Harcamaların'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {

              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Gezi 1',
                        style: TextStyle(color: Colors.red),
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
                                  '1.2.3',
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
                                Text(
                                  '1.2.3',
                                  style: TextStyle(color: Colors.red),
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
        ));
  }
}
