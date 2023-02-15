import 'package:flutter/material.dart';

import 'package:kluck/providers/pages.dart';
import 'package:kluck/widgets/KButton.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final bool alarm = false;

  final bool stopWatch = true;

  final bool timer = true;

  @override
  Widget build(BuildContext context) {
    final pages = Provider.of<Pages>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Stack(
          children: [
            title,
            const Align(
              alignment: Alignment(0.9, -0.9),
              child: KButton(
                height: 55.0,
                icon: Icon(Icons.settings, size: 35, color: Colors.grey),
                borderRadius: 50.2,
                on: 3,
              ),
            ),
            Align(
              alignment: const Alignment(0, 0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                child: pages.items[0]
                    ? const Text('Alarm')
                    : pages.items[1]
                        ? const Text('Stopwach')
                        : pages.items[2]
                            ? const Text('timer')
                            : const Text('Settings'),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  KButton(
                    height: 70.0,
                    icon: Icon(Icons.alarm, size: 35, color: Colors.grey),
                    borderRadius: 20.0,
                    on: 0,
                  ),
                  KButton(
                    height: 70.0,
                    icon: Icon(Icons.timelapse,
                        size: 35, color: Colors.grey),
                    borderRadius: 20.0,
                    on: 1,
                  ),
                  KButton(
                    height: 70.0,
                    icon: Icon(Icons.timer, size: 35, color: Colors.grey),
                    borderRadius: 20.0,
                    on: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget title = Align(
  alignment: const Alignment(-0.9, -0.87),
  child: Text(
    'Kluck',
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.grey.shade800,
    ),
  ),
);

//Widget AC = Placeholder();
