import 'package:flutter/material.dart';
import 'package:flutter_workshop/bottom_border_button.dart';
import 'package:flutter_workshop/comments.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
                'https://secure.meetupstatic.com/photos/event/e/9/4/4/highres_484139716.jpeg'),
            Text(
              'Image title',
              style: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
            ),
            Text(
                'This is the image description and is going to be longer than the title but it will have a smaller font.'),
            Text('Comments:', style: TextStyle(fontSize: 12.0)),
            Expanded(
              child: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (BuildContext context, int index) {
                  var comment = comments[index];
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [BoxShadow(blurRadius: 8.0)]),
                        width: 40.0,
                        height: 40.0,
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.only(right: 16.0),
                        child: Center(child: Text(comment.userInitials)),
                      ),

                      Text(comment.text)
                    ]),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BottomBorderButton(icon: Icons.favorite_border, text: 'Like'),
                  BottomBorderButton(icon: Icons.comment, text: 'Comment'),
                  BottomBorderButton(icon: Icons.share, text: 'Share'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
