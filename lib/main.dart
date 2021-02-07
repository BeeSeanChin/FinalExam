import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'page1.dart';
import 'page3.dart';



void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Page1(),
    )
  );
}

class Page2 extends StatefulWidget{
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=> Page1()));
      }),
        title: Text("Generate Reports"),
      ),
      body: Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView( child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Generate report of business and founder",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20.0,),
            DropDownField(
            controller: sizeSelected,
              hintText: "Select startup size",
              enabled: true,
              itemsVisibleInDropdown: 3,
              items: size,
              onValueChanged: (value)
              {
                setState((){
                  selectSize = value;
                });
              },
            ),
            SizedBox(height: 10.0,),
            Text(
              "The name of startup that you want to find for the certain report",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.left,
            ),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter a company'
          ),
        ),
            SizedBox(height: 10.0,),
            Text(
              "Year of report",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10.0,),
            DropDownField(
              controller: yearSelected,
              hintText: "Select the year of report",
              enabled: true,
              itemsVisibleInDropdown: 5,
              items: year,
              onValueChanged: (value)
              {
                setState((){
                  selectYear = value;
                });
              },
            ),
            SizedBox(height: 10.0,),
            Text(
              "Your email address",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.left,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter your email address'
              ),
            ),
            SizedBox(height: 10.0,),
          ElevatedButton(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Page3()
              ));
            },
            child: Text('Submit'),
          ),
            SizedBox(height: 10.0,),
          Text(
              "The report of business and founder will be sent through email after submitting the details.",
              style: TextStyle(fontSize: 17.0),
              textAlign: TextAlign.left,
            ),
        ],
        ),
      ),
    ),
    );
  }

}

String selectSize ="";
final sizeSelected = TextEditingController();
List<String> size = [
  "Small",
  "Medium",
  "Big",
];

String selectYear = "";
final yearSelected = TextEditingController();
List<String> year = [
  "2016",
  "2017",
  "2018",
  "2019",
  "2020",
  "2021",
];