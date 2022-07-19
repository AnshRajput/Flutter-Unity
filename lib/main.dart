import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unity Flutter Goku'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UnityViewPage()));
          },
          child: const Text('Enter Unity & Meet Saiyans'),
        ),
      ),
    );
  }
}

class UnityViewPage extends StatefulWidget {
  @override
  _UnityViewPageState createState() => _UnityViewPageState();
}

class _UnityViewPageState extends State<UnityViewPage> {
  UnityViewController? unityViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UnityView(
      onCreated: onUnityViewCreated,
      onReattached: onUnityViewReattached,
      onMessage: onUnityViewMessage,
    );
  }

  void onUnityViewCreated(UnityViewController? controller) {
    if (kDebugMode) {
      print('onUnityViewCreated');
    }

    unityViewController = controller;
  }

  void onUnityViewReattached(UnityViewController controller) {
    if (kDebugMode) {
      print('onUnityViewReattached');
    }
  }

  void onUnityViewMessage(UnityViewController controller, String? message) {
    if (kDebugMode) {
      print('onUnityViewMessage');
    }

    if (kDebugMode) {
      print(message);
    }
  }
}
