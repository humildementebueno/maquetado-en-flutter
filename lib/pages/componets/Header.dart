import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new Icon(Icons.comment_bank_outlined, size: 44),
        // new Image(image: NetworkImage()),
        /*
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Image.network(
              'https://i.pinimg.com/originals/82/ce/99/82ce994390bf08d34e93ada5df50e6f2.jpg',
              width: 65,
              height: 65,
              fit: BoxFit.contain),
        ),
        */
        new Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/originals/82/ce/99/82ce994390bf08d34e93ada5df50e6f2.jpg',
                ),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          height: 45,
          width: 100,
          color: Colors.grey,
          child: Text('Search..'),
        ),
        SizedBox(width: 10),
        Container(
            child: Stack(
          children: [
            Icon(
              Icons.notifications_none_outlined,
              size: 44,
            ),
            Positioned(
              top: 9,
              right: 8,
              child: Container(
                //  alignment: Alignment.bottomCenter,
                width: 9,
                height: 9,
                color: Colors.red,
              ),
            )
          ],
        )),
      ],
    );
  }
}
