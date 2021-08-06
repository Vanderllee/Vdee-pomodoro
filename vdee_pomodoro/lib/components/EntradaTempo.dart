import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../store/pomodoro.store.dart';

class EntradaTempo extends StatelessWidget {
  final String title;
  final int value;

  //functions params
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    Key? key,

    required this.title,
    required this.value,
     this.inc,
     this.dec,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      children: [
        Text(
          this.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.dec,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.isWorking() ? Colors.red : Colors.green,
              ),
            ),
            Text(
              '${this.value} min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: this.inc,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.isWorking() ? Colors.red : Colors.green,
              ),
            ),
          ],
        )
      ],
    );
  }
}
