import 'package:flutter/material.dart';
import 'package:vdee_pomodoro/components/pages/Pomodoro.dart';
import 'package:provider/provider.dart';
import './store/pomodoro.store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore())
      ],
      child: MaterialApp(
        title: 'Pomodoro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Pomodoro(),
      ),
    );
  }
}

















/*import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vdee_pomodoro/store/contador.store.dart';
*/

/* final store = ContadorStore();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${store.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
