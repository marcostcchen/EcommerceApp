import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar());
  }

  AppBar appBar() {
    return AppBar(
      title: appBarTitle(),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: gestureLeft(),
      actions: [gestureRight()],
    );
  }

  Text appBarTitle() {
    return const Text(
      'Breakfast',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  GestureDetector gestureLeft() {
    return GestureDetector(
      onTap: () {
        print("Search");
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 232, 231, 231),
        ),
        alignment: Alignment.center,
        child: const Text(
          "<",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  GestureDetector gestureRight() {
    return GestureDetector(
      onTap: () {
        print("Aqui");
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 37,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 232, 231, 231),
        ),
        alignment: Alignment.center,
        child: const Text(
          "..",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
