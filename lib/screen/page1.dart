import 'package:flutter/material.dart';
import 'package:shrpr/screen/page2.dart';

class Page_1 extends StatefulWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  TextEditingController tx1 = TextEditingController();
  TextEditingController px1 = TextEditingController();
  List l2=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              TextField(
                controller: tx1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("email"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: px1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("password"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Shared().createSharedPrefrence(email: tx1.text,password: px1.text);
                },
                child: Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                },
                child: Text("Get"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
