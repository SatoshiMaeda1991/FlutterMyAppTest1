import 'package:flutter/material.dart';
import './SecondScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstScreen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ナビゲーションバー'),
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  int _count = 0;

  void _handlePressed() {
    setState(() {
      _count++;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          Text(
            "$_count",
            style: TextStyle(
              color:Colors.blueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500
            ),
          ),
          FlatButton(
            onPressed: _handlePressed,
            color: Colors.red,
            child: Text(
              '数値を追加する',
              style: TextStyle(
                color:Colors.white,
                fontSize: 20.0
              ),
            ),
          ),
          RaisedButton(child: Text('次に進む'),
          onPressed: (){ 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage(),
              )
            );
          })
        ],
      )
    );
  }
}

