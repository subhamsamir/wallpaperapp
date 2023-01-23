import 'package:flutter/material.dart';

class CatBlock extends StatelessWidget {
  const CatBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  height: 50,
                  width: 100,
                  fit: BoxFit.cover,
                  "https://images.pexels.com/photos/301926/pexels-photo-301926.jpeg"),
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(12)),
            ),
            Positioned(
              left: 40,
              top: 15,
              child: Text(
                "Cars",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ));
  }
}
