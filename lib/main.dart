import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Center(
              child: Text('Pray Counter'),
            ),
            backgroundColor: Colors.greenAccent,
          ),
          body: MainPC(),
        ),
      ),
    ),
  );
}

class MainPC extends StatefulWidget {
  @override
  _MainPCState createState() => _MainPCState();
}

class _MainPCState extends State<MainPC> {
  @override
  int counter = 0;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images3/s1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Expanded(
                      flex: 1,
                      child: RaisedButton(
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            counter = 0;
                          });
                        },
                        child: Text(
                          'Click here to reset ',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RaisedButton(
                        color: Colors.lightGreen,
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text(
                          'Click here to add package ',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: RaisedButton(
              color: Colors.deepOrange,
              onPressed: () {
                setState(() {
                  if (counter > 0) {
                    counter = counter - 1;
                  }
                });
              },
              child: Text(
                'Click here to decrease one ',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              ':تعداد صلوات های فرستاده شده ',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Container(
//            color: Colors.green,
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 5,
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              child: Text(
                'Click here to add one ',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

//        Center(
//          child: Image(
//            image: AssetImage('images3/s1.jpg'),
//          ),
//        ),
