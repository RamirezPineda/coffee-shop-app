import 'package:coffee_app/src/models/index.dart';
import 'package:coffee_app/src/widgets/coffee_card_widget.dart';
import 'package:flutter/material.dart';

class CoffeeItem extends StatelessWidget {
  final Coffee coffee;

  const CoffeeItem({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff1f232a),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // coffe image
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CoffeeCard(coffee: coffee),
                  ),
                );
              },
              child: Hero(
                tag: coffee.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    coffee.imagePath,
                    fit: BoxFit.cover,
                    height: 170,
                    width: 170,
                  ),
                ),
              ),
            ),

            //coffe name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    coffee.description,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            //coffe price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${coffee.price}"),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(0xffd17842),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
