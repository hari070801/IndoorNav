import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class Scene1 extends StatefulWidget {
  const Scene1({super.key});

  @override
  State<Scene1> createState() => _Scene1State();
}

class _Scene1State extends State<Scene1> {
  late UnityWidgetController _unityWidgetController;

  //load unity scene
  void loadUnityScene(String message) {
    _unityWidgetController.postMessage(
      'LevelController',
      'OnUnityMessage',
      message,
    );
  }

  void updateSelectedIndex(int index) {
    _unityWidgetController.postMessage(
      'SetNavigation',
      'SetCurrentnav',
      index.toString(),
    );
  }

  void onUnityCreated(controller) {
    _unityWidgetController = controller;
    loadUnityScene('LoadScene1');
    //updateSelectedIndex(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: UnityWidget(
                onUnityCreated: onUnityCreated,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
