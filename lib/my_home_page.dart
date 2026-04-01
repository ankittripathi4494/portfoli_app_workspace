import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen 1 using MaterialPageRoute(for Android)
                Navigator.pushNamed(
                  context,
                  '/screen1',
                  arguments: {'message': 'Hello from MyHomePage'},
                );
              },
              child: Text('Go to Screen 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen 1 using CupertinoPageRoute(for iOS)
                // Navigator.pushNamed(
                //   context,
                //  '/screen1',
                //   arguments: {'message': 'Hello from MyHomePage (Cupertino)', 'title': 'Screen 2 (Cupertino)'},
                // );
                // Get.toNamed('/screen1', arguments: {'message': 'Hello from MyHomePage (GetX)', 'title': 'Screen 2 (GetX)'});
                Get.to(
                  () => Screen1(
                    message: {
                      'message': 'Hello from MyHomePage (GetX)',
                      'title': 'Screen 2 (GetX)',
                    },
                  ),
                  transition: Transition.cupertino,
                );
              },
              child: Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map? message;
  const Screen1({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          message != null && message!.containsKey('title')
              ? message!['title']
              : 'Screen 1',
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Text(
          message != null && message!.containsKey('message')
              ? message!['message']
              : 'No message received',
        ),
      ),
    );
  }
}
