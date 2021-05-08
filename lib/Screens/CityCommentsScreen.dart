import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/CommentWidget.dart';

class CityCommentsScreen extends StatefulWidget {
  @override
  _CityCommentsScreenState createState() => _CityCommentsScreenState();
}

class _CityCommentsScreenState extends State<CityCommentsScreen> {
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
                      flex:1,
                      child: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      flex:9,
                      child: Column(
                        children: [
                          Container(
                            constraints: BoxConstraints(maxHeight: 100),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green
                                    ),
                                  ),
                                  hintText: 'yorum yazmak için tıklayın...',
                              ),
                            ),
                          ),
                          Container(
                            width:double.infinity,
                            child: ElevatedButton(
                              child: Text('Yorumu gönder'),
                              onPressed: (){

                              },
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
            CommentWidget(comment: 'yorumum geldi', userName: 'melihgulec'),
            SizedBox(height: 15,),
            CommentWidget(comment: 'yorumum gdwqqdweldi', userName: 'adsda'),
          ],
        ),
      ),
    );
  }
}
