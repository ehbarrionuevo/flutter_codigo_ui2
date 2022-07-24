import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {

  // String text;
  // Color color;
  // IconData icon;

  Map<String, dynamic> categoryMap;

  ItemCategoryWidget({
    // required this.text,
    // required this.color,
    // required this.icon,
    required this.categoryMap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      margin: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: categoryMap["color"],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(categoryMap["icon"], color: Colors.white),
          SizedBox(
            width: 6.0,
          ),
          Text(
            categoryMap["text"],
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
