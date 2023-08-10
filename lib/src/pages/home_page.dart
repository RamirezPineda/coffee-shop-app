import 'package:coffee_app/src/models/index.dart';
import 'package:flutter/material.dart';

import 'package:coffee_app/src/widgets/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //coffes types
  final List coffeeTypeList = [
    ['All', true],
    ['Cappuccino', false],
    ['Latte', false],
    ['Espresso', false],
    ['Tea', false],
  ];

  void coffeTypeSelected(int index) {
    for (var coffeType in coffeeTypeList) {
      coffeType[1] = false;
    }

    setState(() {
      coffeeTypeList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xff0c0f14),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff0e0f15),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifications',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Title
            const Text(
              'Coffee Shop',
              style: TextStyle(fontSize: 36),
            ),

            const SizedBox(height: 25),

            // Search
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee...',
                  filled: true,
                  fillColor: Color(0xff141921),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff141921)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff141921)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            //Filters
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeTypeList.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    name: coffeeTypeList[index][0],
                    isSelected: coffeeTypeList[index][1],
                    onTap: () => coffeTypeSelected(index),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            //Coffees
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeItem(
                      coffee: Coffee(
                    id: '1',
                    name: 'Cappuccino',
                    description: 'With Oat Milk',
                    imagePath: 'lib/assets/black-coffee.jpg',
                    price: 15.0,
                    createdAt: DateTime.now(),
                  )),
                  CoffeeItem(
                      coffee: Coffee(
                    id: '2',
                    name: 'Latte',
                    description: 'With fruits',
                    imagePath: 'lib/assets/latte.jpg',
                    price: 10.0,
                    createdAt: DateTime.now(),
                  )),
                  CoffeeItem(
                      coffee: Coffee(
                    id: '3',
                    name: 'Espresso',
                    description: 'Without Milk',
                    imagePath: 'lib/assets/espresso.jpg',
                    price: 12.0,
                    createdAt: DateTime.now(),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
