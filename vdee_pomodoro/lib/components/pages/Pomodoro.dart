import 'package:flutter/material.dart';
import 'package:vdee_pomodoro/components/Cronometro.dart';
import 'package:vdee_pomodoro/components/EntradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro(),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(title: 'Trabalho', value: 25),
                EntradaTempo(title: 'Descanso', value: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
