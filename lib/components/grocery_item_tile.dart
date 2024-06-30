import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  @override

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;
  final void Function()? onPressed;

  const GroceryItemTile ({super.key, 
  required this.itemName,
  required this.itemPrice,
  required this.color,
  required this.imagePath,
  required this.onPressed,
});

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color.withOpacity(0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Image.asset(imagePath, height: 64),
          ),
          Text(itemName, style: const TextStyle(fontSize: 16),
          ),
          MaterialButton(
            onPressed: onPressed,
            color: color,
            child: Text(
              '\$$itemPrice',
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            ),
          ],
        ),
      ),
    );
  }
}