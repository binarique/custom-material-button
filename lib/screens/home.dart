import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Material(
              color: Color.fromRGBO(255, 152, 0, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
              child: InkWell(
                splashColor: Colors.orange,
                onTap: () {
                  print("hello");
                },
                child: Container(
                  width: size.width * 0.9,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
