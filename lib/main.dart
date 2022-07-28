import 'dart:math';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [image(), container()],
      ),
    );
  }
}

class container extends StatelessWidget {
  const container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title(), user(), listItem(), titleContainer()],
      ),
    );
  }
}

class image extends StatelessWidget {
  const image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/Rectangle 1.png',
    );
  }
}

class title extends StatelessWidget {
  const title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Text(
        'Bánh sinh nhật 7 màu rực rỡs',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );
  }
}

class user extends StatelessWidget {
  const user({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Nguyễn Quốc Vinh';
    String start = '4.2';

    return Container(
      padding: EdgeInsets.all(15),
      child: item(name: name, start: start),
      width: 414,
    );
  }
}

class item extends StatelessWidget {
  const item({
    Key? key,
    required this.name,
    required this.start,
  }) : super(key: key);

  final String name;
  final String start;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/img/Ellipse 1.png'),
            Text(name,
                style: TextStyle(fontSize: 15, color: Color(0xff898989))),
          ],
        ),
        Row(
          children: [
            Text(start, style: TextStyle(fontSize: 20)),
            Image.asset('assets/img/vector.png'),
          ],
        ),
      ],
    );
  }
}

class listItem extends StatelessWidget {
  const listItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1, color: Color(0xffaaaaaa)),
            bottom: BorderSide(width: 1, color: Color(0xffaaaaaa)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset('assets/img/Vector (1).png', width: 13),
                Text('Liên hệ',
                    style: TextStyle(fontSize: 20, color: Color(0xff000000))),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/img/Vector (2).png', width: 15),
                Text('Chỉ đường',
                    style: TextStyle(fontSize: 20, color: Color(0xff000000))),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/img/Vector (3).png', width: 15),
                Text('Chia sẻ',
                    style: TextStyle(fontSize: 20, color: Color(0xff000000))),
              ],
            ),
          ],
        ),
        width: 414);
  }
}

class titleContainer extends StatelessWidget {
  const titleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mô tả',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            Text(
                'Bánh sinh nhật 7 màu là bánh rất đặc trưng trong các dịp sinh nhật ở Việt Nam.',
                style: TextStyle(fontSize: 11, color: Color(0xffaaaaaa))),
            Text(
              'Nguyên liệu',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            Text(
                '1. 500g/1lb 2oz salted butter, at room temperature, plus extra for greasing the tins.',
                style: TextStyle(fontSize: 11, color: Color(0xffaaaaaa))),
            Text('2. 500g/1lb 2oz caster sugar.',
                style: TextStyle(fontSize: 11, color: Color(0xffaaaaaa))),
            Text('3. 10 large free-range eggs, lightly beaten.',
                style: TextStyle(fontSize: 11, color: Color(0xffaaaaaa))),
            Text('4. 3 tbsp vanilla extract.',
                style: TextStyle(fontSize: 11, color: Color(0xffaaaaaa))),
            Text(
                '5. 500g/1lb 2oz self-raising flour, plus extra for dusting the tins.',
                style: TextStyle(fontSize: 11, color: Color(0xffaaaaaa)))
          ],
        ),
        width: 414);
  }
}
