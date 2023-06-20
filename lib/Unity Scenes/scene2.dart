import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class Scene2 extends StatefulWidget {
  const Scene2({super.key});

  @override
  State<Scene2> createState() => _Scene2State();
}

class _Scene2State extends State<Scene2> {
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
    loadUnityScene('LoadScene2');
    //updateSelectedIndex(1);
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
