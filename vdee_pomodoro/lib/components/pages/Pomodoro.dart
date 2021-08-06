import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:vdee_pomodoro/components/Cronometro.dart';
import 'package:vdee_pomodoro/components/EntradaTempo.dart';
import '../../store/pomodoro.store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  title: 'Trabalho',
                  value: store.workTime,
                  inc: store.started && store.isWorking()? null :store.workIncrement,
                  dec: store.started && store.isWorking()? null :store.workDecrement,
                ),
                EntradaTempo(
                  title: 'Descanso',
                  value: store.restTime,
                  inc:  store.started && store.isResting()? null :store.restIncrement,
                  dec:  store.started && store.isResting()? null :store.restDecrement,
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
