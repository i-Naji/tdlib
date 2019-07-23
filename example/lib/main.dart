/*
 * just a example! client creator :)
 */

import 'package:flutter/material.dart';
import 'package:tdlib/td_client.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TDLib Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter TDLib Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*
  Here we go!
   */
  TdClient client = TdClient();
  int clientId = 0;

  void _clientCreator() async {
    /*
     Here we renew!
   */
    int oldClientId = clientId;
    int newClientId = await client.createClient();
    setState(() {
      clientId = newClientId;
    });
    // closing after renewing! just to get NEW client identifier.
    if (oldClientId != 0) {
      await client.destroyClient(oldClientId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TDLib Client ID\n$clientId',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _clientCreator,
        tooltip: 'creator',
        child: Icon(Icons.cached),
      ),
    );
  }
}
