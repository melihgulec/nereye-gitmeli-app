import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Components/CommentWidget.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CityCommentsScreen extends StatefulWidget {
  Sehir sehirData;

  CityCommentsScreen({this.sehirData});

  @override
  _CityCommentsScreenState createState() => _CityCommentsScreenState();
}

class _CityCommentsScreenState extends State<CityCommentsScreen> {
  CollectionReference commentsCollection =
      FirebaseFirestore.instance.collection('Comments');
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  SharedPreferences prefs;
  bool isLogged = false;
  String textVal = "";
  String userName = "";
  var _controller = TextEditingController();

  Future getPrefs() async {
    prefs = await SharedPreferences.getInstance();

    setState(() {
      isLogged = prefs.getBool('isLogged');
      userName = prefs.getString('name');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefs();
  }

  void addComment(String comment) {
    _controller.clear();
    commentsCollection.add({
      'cityid': widget.sehirData.id,
      'comment': textVal,
      'name': userName,
      'type': 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 9,
                      child: Column(
                        children: [
                          Container(
                            constraints: BoxConstraints(maxHeight: 100),
                            child: TextField(
                              controller: _controller,
                              onChanged: (value) {
                                textVal = value;
                              },
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              enabled: isLogged,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                                hintText: 'yorum yazmak için tıklayın...',
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text('Yorumu gönder'),
                              onPressed:
                                  isLogged ? () => addComment('comment') : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Comments')
                  .where('cityid', isEqualTo: widget.sehirData.id)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<DocumentSnapshot> items = snapshot.data.docs;
                  return Flexible(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CommentWidget(
                                userName: items[index].data()['name'],
                                comment: items[index].data()['comment']),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        );
                      },
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
