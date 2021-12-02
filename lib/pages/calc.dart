import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({Key? key}) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController quantity = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = "Buy X apples, Because each apple cost 100000 THB, you have to pay X THB";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/images/download.png", width: 100,),
              SizedBox(height: 20,),
              Text("Calculator Program",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Maa",
                      fontWeight: FontWeight.bold)),
              TextField(
                controller: price,
                decoration: InputDecoration(
                    labelText: "Apple Price", border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: quantity,
                decoration: InputDecoration(
                    labelText: "Apple Amount", border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  var cal = double.parse(quantity.text)*double.parse(price.text);
                  print("Apple quality: ${quantity.text} Total: ${cal} THB");

                  setState(() {
                    result.text = "But ${quantity.text} apple. Because each apple cost ${price.text} THB, you have to pay ${cal} THB";
                  });
                },
                child: Text("Calculator"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff66FFCC)),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 30, 50, 70)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontFamily:"Maa", fontSize: 20))
                ),
              ),
              SizedBox(height: 20,),
              Text(result.text)
            ],
          ),
        )
    );
  }
}
