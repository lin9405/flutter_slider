
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new MyStateFul(),
    );
  }
}



class MyStateFul extends StatefulWidget {
  MyStateFul({Key key, this.title}) : super(key: key);
  final String title;
  @override
  MyState createState() => new MyState();

}



class MyState extends State<MyStateFul> {
  String message = "Slider Scale.";
  double val = 2.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('slider practice'),
      ),



      body: new ListTile(
        title: Text('slider'),
      ),

    bottomNavigationBar: new ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          value: val,
          onChanged: (double e)=> changed(e),
          activeColor: Colors.lightBlueAccent,
          inactiveColor: Colors.grey,
          divisions: 10,
          //label: "My Slider",
          max: 500.0,
          min: 0.0,
        ),

      ],
    ),

      /*

      body: new ListTile(
        title: Text(message),
        subtitle:
            Slider(
              value: val,
              onChanged: (double e)=> changed(e),
              activeColor: Colors.lightBlueAccent,
              inactiveColor: Colors.grey,
              divisions: 25,
              //label: "My Slider",
              max: 500.0,
              min: 0.0,
            ),
      ),


*/
/*
     bottomNavigationBar: new ButtonBar(
        alignment: MainAxisAlignment.start,
        children: <Widget>[
          Slider(
              value: val,
              onChanged: (double e)=> changed(e),
              activeColor: Colors.lightBlueAccent,
            inactiveColor: Colors.grey,
            divisions: 10,
            //label: "My Slider",
            max: 500.0,
            min: 0.0,
          ),
          new Text(message),

        ],
      ),
      */




/*
 bottomNavigationBar: new ListTile(
   title: new Text('dfadsf') ,
   subtitle: Slider(
     value: val,
     onChanged: (double e)=> changed(e),
     activeColor: Colors.lightBlueAccent,
     inactiveColor: Colors.grey,
     divisions: 10,
     //label: "My Slider",
     max: 500.0,
     min: 0.0,),
 ),



*/


    );
  }

  void changed(e) {
    setState(() {
      val = e;
      message = "Up to: ${e.toStringAsFixed(1)}";

    });
  }

}











/*


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}


*/