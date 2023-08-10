import 'dart:ui';

import 'package:coffee_app/src/models/index.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  const CoffeeCard({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // coffee image
                Hero(
                  tag: coffee.id,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      coffee.imagePath,
                      fit: BoxFit.cover,
                      height: 450,
                    ),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          color: Colors.white10,
                          child: Container(
                            color: Colors.black26,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        coffee.name,
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'With milk',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\$${coffee.price}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Color(0xffd17842),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: const Color(0xff141921),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          '+ Add to cart',
                                          style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // arrow back
                // Row(
                //   children: [
                //     IconButton(
                //       onPressed: () => Navigator.pop(context),
                //       icon: const Icon(
                //         Icons.arrow_back_ios_new,
                //         color: Colors.white,
                //         size: 30,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),

            // Description
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '${coffee.description} coffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.descriptioncoffee.description',
                    style: const TextStyle(),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    "Size",
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        minWidth: 100,
                        height: 40,
                        color: const Color(0xff141921),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xffd17842)),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "S",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      MaterialButton(
                        minWidth: 100,
                        height: 40,
                        color: const Color(0xff141921),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "M",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      MaterialButton(
                        minWidth: 100,
                        height: 40,
                        color: const Color(0xff141921),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "L",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // buy button
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Price",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "\$ ${coffee.price}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        minWidth: 280,
                        height: 50,
                        color: const Color(0xffd17842),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: const Text(
                          "Buy now",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
