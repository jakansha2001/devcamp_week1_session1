import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(73, 123, 125, 1),
                  Color.fromRGBO(17, 28, 76, 1),
                ],
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                // height: 100,
                // width: 100,
                color: Colors.green,
                child: const Text(
                  'GDG London',
                  style: TextStyle(
                    fontSize: 45,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
