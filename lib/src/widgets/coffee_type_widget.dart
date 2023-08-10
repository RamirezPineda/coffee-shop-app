import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeType({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? const Color(0xffc3703e) : Colors.grey.shade700,
          ),
        ),
      ),
    );
  }
}
