import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



bulildListView(
    String title, String image, String price, Color bgcolor, Color textcolor) {
  return Container(
    padding: const EdgeInsets.all(15.0),
    margin: const EdgeInsets.symmetric(horizontal: 10.0),
    width: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: bgcolor,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 5,
          offset: const Offset(0, 6),
        ),
      ],
    ),
    child: Column(children: [
      Center(
        child: Container(
          height: 120,
          width: 120,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: GestureDetector(
              onTap: () {},
              child: Hero(
                tag: 'imagee',
                child: Image.network(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(title,
          style: GoogleFonts.notoSans(
            textStyle: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: textcolor),
          )),
      const SizedBox(
        height: 5,
      ),
      Text(
        '₹ ' + price,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: textcolor,
        ),
      ),
    ]),
  );
}
