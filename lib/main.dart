import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  var No1controller = TextEditingController();
  var No2controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.purple.shade400,
          title: Center(child: Text('Simple Calculator', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
        ),

        body: Container(
            color: Colors.purple.shade50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: No1controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText:'Enter first number'
                      ),
                    ),


                    TextField(
                      controller: No2controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText:'Enter second number'
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: (){
                            var No1 = int.parse(No1controller.text.toString());
                            var No2 = int.parse(No2controller.text.toString());
                            var sum = No1+No2;
                            result = "The sum of $No1 and $No2 is $sum";

                            setState(() {

                            });

                          }, child: Text('Add (+)')),
                          ElevatedButton(onPressed: (){
                            var No1 = int.parse(No1controller.text.toString());
                            var No2 = int.parse(No2controller.text.toString());
                            var diff = No1-No2;
                            result = "Difference of $No1 and $No2 is $diff";

                            setState(() {

                            });
                          }, child: Text('Subtract (-)')),
                          ElevatedButton(onPressed: (){
                            var No1 = int.parse(No1controller.text.toString());
                            var No2 = int.parse(No2controller.text.toString());
                            var product = No1*No2;
                            result = "Product of $No1 and $No2 is $product";

                            setState(() {

                            });
                          }, child: Text('Multiply (*)')),
                          ElevatedButton(onPressed: (){
                            var No1 = int.parse(No1controller.text.toString());
                            var No2 = int.parse(No2controller.text.toString());
                            var times = No1/No2;
                            result = "The $No1 can be divided by $No2, ${times.toStringAsFixed(2)} times.";

                            setState(() {

                            });
                          }, child: Text('Divide (/)')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: Text(result, style: TextStyle(fontSize: 22,color: Colors.purple,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
            ),
            )
        );
  }

}
