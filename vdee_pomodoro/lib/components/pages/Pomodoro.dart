import 'package:flutter/material.dart';
import 'package:vdee_pomodoro/components/EntradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EntradaTempo(title: 'Trabalho', value: 25),
              EntradaTempo(title: 'Descanso', value: 5)
            ],
          )
        ],
      ),
    );
  }
}
