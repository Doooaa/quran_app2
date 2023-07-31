import 'consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  MyListTile({
    required this.imageUrl,
    required this.title,
    required this.sub_title,
    required this.fun,
  });
  String imageUrl;
  String title;
  String sub_title;
 final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: fun,
        leading: Container(
          width: 60,
          height: 200, //
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // color: Color.fromRGBO(132, 120, 246, 0.37),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ), //
        ),
        subtitle: Text(
          sub_title,
          style: TextStyle(
            color: Color.fromARGB(255, 143, 138, 138),
            fontWeight: FontWeight.w800,
            fontSize: 12,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.play_circle,
            color: baseColor,
            size: 30,
          ),
        ));
  }
}
