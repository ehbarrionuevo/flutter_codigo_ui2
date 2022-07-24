
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(46.0,),),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://www.travelandleisure.com/thmb/ipVEI18VvgYxIlUl5yS0GgI7Pus=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/belize-GOWHERE221121-776f36756ab34558a30ad6c05699e70a.jpg"),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.blue,
                      ],
                    ),
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
