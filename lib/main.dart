import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:sunday/src/init/init.dart';
import 'package:sunday/src/models/index.dart';
import 'package:sunday/src/util/router.dart';

const List<DeviceOrientation> kPortraitOrientations = <DeviceOrientation>[
  DeviceOrientation.portraitDown,
  DeviceOrientation.portraitUp,
];
const List<DeviceOrientation> kLandscapeOrientations = <DeviceOrientation>[
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.landscapeRight,
];

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      WidgetsBinding.instance.deferFirstFrame();
      await SystemChrome.setPreferredOrientations(kPortraitOrientations);

      final GetIt getIt = await init();
      runApp(SundayApp(getIt: getIt));
      WidgetsBinding.instance.allowFirstFrame();
    },
    (Object error, StackTrace stackTrace) {
      // ignore: only_throw_errors
      throw error;
    },
  );
}

class SundayApp extends StatefulWidget {
  const SundayApp({super.key, required this.getIt});

  final GetIt getIt;

  @override
  State<SundayApp> createState() => _SundayAppState();
}

class _SundayAppState extends State<SundayApp> {
  @override
  Widget build(BuildContext context) {
    final AppRouter router = widget.getIt.get<AppRouter>();
    return Provider<GetIt>(
      create: (BuildContext context) => widget.getIt,
      builder: (BuildContext context, _) {
        return StoreProvider<AppState>(
          store: widget.getIt.get<Store<AppState>>(),
          child: MaterialApp.router(
            routeInformationProvider: router.routeInfoProvider(),
            routeInformationParser: router.defaultRouteParser(),
            routerDelegate: router.delegate(),
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
