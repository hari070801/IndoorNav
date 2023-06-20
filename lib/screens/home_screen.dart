import 'package:flutter/material.dart';
import 'package:qrscanner/screens/scan_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome Back,",
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'user',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "An Immersive Application for Indoor Navigation Using Augmented Reality.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w100,
                  height: 1.4,
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //scan btn
                  Center(
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Colors.black87,
                      ),
                      label: const Text(
                        'Scan',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        backgroundColor: const Color.fromARGB(44, 25, 233, 163),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      onPressed: () {
                        //navigation to scan page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScanScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
