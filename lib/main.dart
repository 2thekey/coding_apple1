import 'package:flutter/material.dart';
import 'animal_page.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'cat',
    'cow',
    'dog',
    'horse',
    'lion',
    'monkey',
    'rabbit',
    'tiger',
  ];

  static List<String> animalImagePath = [
    'image/cat.png',
    'image/cow.png',
    'image/dog.png',
    'image/horse.png',
    'image/lion.png',
    'image/monkey.png',
    'image/rabbit.png',
    'image/tiger.png',
  ];

  static List<String> animalLocation = [
    'skhouse',
    'hongseong',
    'hongbuk',
    'farm',
    'zoo',
    'china',
    'sik',
    'russia',
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
          animalName[index], animalLocation[index], animalImagePath[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(animalData[index].name),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset((animalData[index].imgPath)),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AnimalPage(animal: animalData[index],)));
                debugPrint(animalData[index].name);
              },
            ),
          );
        },
      ),
    );
  }
}
