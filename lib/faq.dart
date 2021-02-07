import 'package:flutter/material.dart';
import 'page1.dart';

class Faq extends StatefulWidget{
  @override
  _FaqState createState() => _FaqState();
}
class _FaqState extends State<Faq>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Page1()));
          }),
          title: Text("FAQs"),
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
              "How can we help you?",
              style: TextStyle(fontSize: 30.0, color:Colors.grey),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20.0,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter a question'
              ),
            ),
            SizedBox(height: 10.0,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter your email address'
              ),
            ),
            SizedBox(height: 30.0,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              ),
              onPressed: () {},
              child: Text('Submit'),
            ),
            SizedBox(height: 10.0,),
            Text(
              "The question will be sent to the advisor. Email will be received after a while. Please be patient.",
              style: TextStyle(fontSize: 20.0, color:Colors.black87),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        ),
      ),
    );
  }

}