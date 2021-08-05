import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {

 final String title;
 final int value;

  const EntradaTempo({
    Key? key,
    required this.title,
    required  this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.title,
          style: TextStyle(
          fontSize: 25,
          ),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {}, 
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red,
              ),
            ),

            Text(
              '${this.value} min',
              style: TextStyle(
                fontSize: 18,
              ),
              ),

             ElevatedButton(
              onPressed: () {}, 
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red,
              ),
            ),
          ],
        )
      ],
    );
  }
}
