import 'package:flutter/material.dart';

class counterpage extends StatefulWidget {
  Map detectedWord;
  counterpage({this.detectedWord});
  @override
  _counterpageState createState() => _counterpageState();
}

class _counterpageState extends State<counterpage> {
  Map detectedWord={};
  List<DataRow> data = [];


  /// check if the string contains only numbers

  /// check if the string contains only numbers

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detectedWord = widget.detectedWord;
    dataTable();
  }
  void dataTable(){
    detectedWord.forEach((key, value) {
      checkType(){
        var res;
        if (key.runtimeType == String){
          res=("DATE");
        }else if (key.runtimeType == String)
        {
          res=("NUMERIC");
        }
        return res;

      }

      data.add(DataRow(cells: [
        DataCell(Text(key),),
        DataCell(Text('$value'),),
        DataCell(Text("${checkType()}"))
        /// check if the string contains only numbers
        // DataCell(Text(checkType())),
        /// check if the string contains only numbers
      ],));
    });
  }

  @override
  Widget build(BuildContext context) {
   // print(detectedWord);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Numeric and Date Expression Detection"),
          backgroundColor: Colors.lightGreen.shade300,
        ),
        body: SingleChildScrollView(
          child:Center(
          child: Column(
            children: [
              DataTable(
                columns: [
                  DataColumn(label: Text('Texts',textScaleFactor: 2.0,),),
                  DataColumn(label: Text('Times',textScaleFactor: 2.0,)),
                  /// check if the string contains only numbers
                  DataColumn(label: Text('Types',textScaleFactor: 2.0,)),
                  /// check if the string contains only numbers

                ],
                rows: data,
              ),
              RaisedButton(
                  child: Text("BACK"),
                  onPressed: () {
                    Navigator.pop(context);

                  }),
            ],
          )
        )
      ),
    ));
  }
}
