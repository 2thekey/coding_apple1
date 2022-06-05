import 'package:flutter/material.dart';
import 'model.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({Key? key, required this.animal}) : super(key: key);

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(animal.imgPath)),
            SizedBox(
              height: 20,
            ),
            Text(
                'It lives in ' + animal.location,
            style: const TextStyle(
              fontSize: 18
            ),)
          ],
        ),
      ),
    );
  }
}
