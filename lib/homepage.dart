import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValueNotifier Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  'Counter Value: $value',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _counter.value++;
              },
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
