import 'package:flutter/material.dart';
import 'package:flutter_codigo_ui2/pages/detail_page.dart';

class ItemSliderWidget extends StatelessWidget {

  Map<String, dynamic> placeMap;

  ItemSliderWidget({
    required this.placeMap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));
      },
      child: Container(
        height: 160,
        width: 240,
        margin: const EdgeInsets.only(right: 14.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(placeMap["image"]),
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
                    placeMap["name"],
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
                    "${placeMap["rate"]} (${placeMap["views"]} views)",
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
      ),
    );
  }
}
