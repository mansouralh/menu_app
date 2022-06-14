import 'package:flutter/material.dart';
import 'package:menu_app/models/food.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Food> menu = [
    Food(name: 'Pasta', imgpath: 'assets/images/pasta.jpeg'),
    Food(name: 'Burger', imgpath: 'assets/images/burger.jpeg'),
    Food(name: 'Suchi', imgpath: 'assets/images/suchi.jpeg'),
    Food(name: 'Pizza', imgpath: 'assets/images/pizza.jpeg'),
    Food(name: 'Biryani', imgpath: 'assets/images/biryani.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Menu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                shadowColor: Colors.black,
                color: Colors.white,
                child: Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(child: Text(menu[index].name)),
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(menu[index].imgpath)),
                    ],
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
