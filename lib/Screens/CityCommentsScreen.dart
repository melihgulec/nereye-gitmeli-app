import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Components/CommentWidget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nereye_gitmeli_app/Constants/Colors.dart';

class CityCommentsScreen extends StatefulWidget {
  final Sehir sehirData;

  CityCommentsScreen({this.sehirData});

  @override
  _CityCommentsScreenState createState() => _CityCommentsScreenState();
}

class _CityCommentsScreenState extends State<CityCommentsScreen> {
  FirebaseFirestore firestore;
  CollectionReference commentsCollection =
      FirebaseFirestore.instance.collection('Comments');
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
      'type': 1,
      'tarih': FieldValue.serverTimestamp()
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        child: Image(
                          image: NetworkImage('https://ui-avatars.com/api/?name=${userName == null ? 'x' : userName.replaceAll(' ', '+')}&size=256&bold=true&rounded=true'),
                          errorBuilder: (context, object, stackTrace){
                            return Icon(Icons.person);
                          },
                          loadingBuilder: (context, child, loadingProgress){
                            if(loadingProgress == null) return child;
                            return CircularProgressIndicator();
                          },
                        ),
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
                                fillColor: Colors.white,
                                filled: true,
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
                              style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).primaryColor,
                              ),
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
          ),
          SizedBox(
            height: 15,
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Comments')
                .where('cityid', isEqualTo: widget.sehirData.id)
                .orderBy('tarih', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<DocumentSnapshot> items = snapshot.data.docs;
                return Flexible(
                  child: ListView.separated(
                    separatorBuilder: (context, index){
                      return Divider(color: Colors.grey,);
                    },
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      Timestamp timestamp = items[index].data()['tarih'];
                      var timeToNormal = DateTime.fromMicrosecondsSinceEpoch(timestamp == null ? DateTime.now().microsecondsSinceEpoch : timestamp.microsecondsSinceEpoch);
                      return Column(
                        children: [
                          CommentWidget(
                              userName: items[index].data()['name'],
                              comment: items[index].data()['comment'],
                              time: timeToNormal,
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
    );
  }
}
