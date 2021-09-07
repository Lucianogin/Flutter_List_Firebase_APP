import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/empresario');
                },
                child: Text(
                  "Empresário",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                child: Text("Funcionário"),
                onPressed: () {
                  Navigator.pushNamed(context, '/funcionario');
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                child: Text("Cliente"),
                onPressed: () {
                  Navigator.pushNamed(context, '/cliente');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
