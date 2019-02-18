import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'detail_screen.dart';
import 'vehicle.dart';

class ExpandableList extends StatefulWidget {

  @override
  _ExpandableListState createState() => new _ExpandableListState();
  final String title;
  const ExpandableList({Key key, this.title}) : super(key: key);

}

class _ExpandableListState extends State<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("sample "),
      ),

      body: new ListView.builder(

        itemCount: vehicles.length,

        itemBuilder: (context, i) {
          return new ExpansionTile(

            title: new Text(vehicles[i].title, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
            children: <Widget>[

              new Column(

                children: _buildExpandableContent(vehicles[i]),

              ),
            ],

          );

        },

      ),


    );
  }

  _buildExpandableContent(Vehicle vehicle) {
    List<Widget> columnContent = [];
    for (String content in vehicle.contents)
      columnContent.add(
        new ListTile(

          title: new Text(content, style: new TextStyle(fontSize: 18.0),),
          leading: new Icon(vehicle.icon),
          onTap: () {

            debugPrint("data : "+content);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(title:content)),
            );
//            Scaffold.of(context).showSnackBar(new SnackBar(
//              content: new Text('test'),
//            ));


          },

        ),
      );

    return columnContent;
  }


}
