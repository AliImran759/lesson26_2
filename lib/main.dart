import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lesson26(),
    );
  }
}

class Lesson26 extends StatelessWidget {
  const Lesson26({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            Text(
              'Редактировать',
              style: TextStyle(color: Color(0xff333333), fontSize: 16),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Column(children: [
            Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Castomcart(
                        title: 'Название',
                      ),
                      Textcart(
                        hintText: 'Водитель такси',
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Castomcart(
                        title: 'Телефон',
                      ),
                      Textcart(hintText: '8-911-111-22-33'),
                      SizedBox(
                        height: 32,
                      ),
                      Castomcart(
                        title: 'Описание',
                      ),
                      Textcart(hintText: 'Водитель Владимир; четные даты'),
                      SizedBox(
                        height: 40,
                      ),
                      Buttoncart(
                        title2: 'Добавить',
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Buttoncart(title2: 'Удалить'),
                    ]))
          ])
        ],
      ),
    );
  }
}

class Castomcart extends StatelessWidget {
  final String title;
  const Castomcart({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

class hinttext extends StatelessWidget {
  final String hintText2;
  const hinttext({
    Key? key,
    required this.hintText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Textcart(
      hintText: hintText2,
    );
  }
}

class Buttoncart extends StatelessWidget {
  final String title2;

  const Buttoncart({
    Key? key,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.0603,
        width: MediaQuery.of(context).size.width * 0.9247,
        decoration: BoxDecoration(
          color: Color(0xff59A4F2),
          borderRadius: BorderRadius.circular(10),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            width: 344,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
          )
        ]));
  }
}

class Textcart extends StatelessWidget {
  final String hintText;
  const Textcart({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        // enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,)),
        // border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))
      ),
    );
  }
}
