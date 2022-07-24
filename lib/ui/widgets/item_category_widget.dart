import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {
  String text;
  Color color;
  IconData icon;

  ItemCategoryWidget({
    required this.text,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      margin: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(
            width: 6.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
