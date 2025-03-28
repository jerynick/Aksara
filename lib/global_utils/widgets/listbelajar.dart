import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {

  final String image;
  final String name;
  //final Widget navigation;
  final Color warna;

  const ListMenu({
    super.key,
    required this.image,
    required this.name,
    //required this.navigation,
    required this.warna

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16, top: 12),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: 88,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Image.asset(image),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
