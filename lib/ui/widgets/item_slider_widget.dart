
import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 240,
      margin: const EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://world-traveled.com/wp-content/uploads/2021/01/219733347-kopie_1610117841-1040x690.jpg",
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Color(0xff17467A).withOpacity(0.6),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mount Fanjingshan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  "4.4 (2323 views)",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
