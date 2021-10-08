import 'package:flutter/material.dart';

class MyDemoCode extends StatelessWidget {
  const MyDemoCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ColoredBox(
          color: Colors.red,
          edgeLength: 30,
        ),
        const ColoredBox(
          color: Colors.green,
          edgeLength: 20,
        ),
        const ColoredBox(
          color: Colors.blue,
          edgeLength: 10,
        ),
        const SizedBox(width: 100, child: TextField()),
        const SizedBox(height: 10),
        ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CompletelyDifferentScreen(color: Colors.red))),
            child: const Text('Continue')),
        const SizedBox(height: 10),
        OutlinedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CompletelyDifferentScreen(color: Colors.green))),
            child: const Text('Continue')),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CompletelyDifferentScreen(color: Colors.blue))),
            child: const Text('Continue')),
        const SizedBox(height: 10),
      ],
    );
  }
}

class ColoredBox extends StatelessWidget {
  const ColoredBox({
    Key? key,
    required this.color,
    required this.edgeLength,
  }) : super(key: key);
  final Color color;
  final double edgeLength;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: edgeLength,
      height: edgeLength,
      decoration: BoxDecoration(color: color),
    );
  }
}

class CompletelyDifferentScreen extends StatelessWidget {
  const CompletelyDifferentScreen({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Completely different screen'),
      ),
      body: Center(
        child: ColoredBox(
          color: color,
          edgeLength: 50,
        ),
      ),
    );
  }
}
