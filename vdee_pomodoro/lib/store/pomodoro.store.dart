import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { WORK, REST }

abstract class _PomodoroStore with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  IntervalType intervalType = IntervalType.WORK;

  // Timer do dart
  Timer? cronometro;

  @action
  void start() {
    this.started = true;
    cronometro = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (minutes == 0 && seconds == 0) {
        _intervalInvert();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    this.started = false;
    cronometro?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? workTime : restTime;
    seconds = 0;
  }

  @action
  void workIncrement() {
    workTime++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void workDecrement() {
    workTime--;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void restIncrement() {
    restTime++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void restDecrement() {
    restTime--;
    if (isResting()) {
      restart();
    }
  }

  bool isWorking() {
    return intervalType == IntervalType.WORK;
  }

  bool isResting() {
    return intervalType == IntervalType.REST;
  }

  void _intervalInvert() {
    if (isWorking()) {
      intervalType = IntervalType.REST;
      minutes = workTime;
    } else {
      intervalType = IntervalType.WORK;
      minutes = restTime;
    }

    seconds = 0;
  }
}
