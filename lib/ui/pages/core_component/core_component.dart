import 'package:flutter/material.dart';
import 'package:sanber_pos/ui/pages/core_component/styling.dart';

class CoreComponnet extends StatelessWidget {
  CoreComponnet({super.key});

  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Core Component')),
      body: Center(
          child: Column(
        children: [
          Text(
            "Hello World",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          InkWell(
            onTap: () {
              print("Hello world");
            },
            child: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.settings)),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.settings,
              size: 50,
              color: Colors.pink,
            ),
          ),
          OutlinedButton(onPressed: () {}, child: Text('outlined button')),
          TextButton(onPressed: () {}, child: Text('text button')),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Image.network(
            "https://sanbercode.com/assets/img/identity/logo@2x.jpg",
            height: 100,
            width: 200,
          ),
          Image.asset(
            "assets/logo/google.png",
            height: 100,
            width: 100,
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(hintText: "Masukan password"),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StylingPage()));
              },
              child: Text('Submit')),
        ],
      )),
    );
  }
}
