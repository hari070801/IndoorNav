import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class MyUnityWidget extends StatefulWidget {
  const MyUnityWidget({super.key});

  @override
  State<MyUnityWidget> createState() => _MyUnityWidgetState();
}

class _MyUnityWidgetState extends State<MyUnityWidget> {
  late UnityWidgetController _unityWidgetController;
  @override
  Widget build(BuildContext context) {
    return UnityWidget(
      onUnityCreated: (controller) => _unityWidgetController = controller,
    );
  }

  void loadUnityScene(String message) {
    _unityWidgetController.postMessage(
        'LevelController', 'OnUnityMessage', message);
  }
}
