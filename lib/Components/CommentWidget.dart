import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentWidget extends StatelessWidget {
  final String userName;
  final String comment;
  final DateTime time;

  CommentWidget({
    Key key,
    @required this.userName,
    @required this.comment,
    @required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: secondColor,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                child: Image(
                  image: NetworkImage('https://ui-avatars.com/api/?name=${userName.replaceAll(' ', '+')}&size=256&bold=true&rounded=true'),
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
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      userName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      comment,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: double.infinity,
                    child: Text(
                      '${DateFormat('dd.MM.yyyy HH:mm').format(time)}',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
