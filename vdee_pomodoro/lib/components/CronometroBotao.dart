import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String title;
  final IconData icon;

  const CronometroBotao({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          textStyle: TextStyle(
            fontSize: 25,
          )),
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
