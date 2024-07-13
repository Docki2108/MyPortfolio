import 'dart:async';
import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:marquee/marquee.dart';

import 'data/Models/Class_Project.dart';
import 'data/texts.dart';
import 'sea_page.dart';

void main() {
  runZonedGuarded(
    () => runApp(const MyApp()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/sea': (context) => const sea_page(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHovering = false;
  bool isHovering1 = false;
  bool isHoveringContacts = false;
  bool isHoveringSea = false;

  final ScrollController _scrollController = ScrollController();

  final GlobalKey key1 = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Думилин VADIM Владиславович',
              style: TextStyle(
                  fontFamily: "Caravan", fontSize: 50, color: Colors.grey),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: Marquee(
                text: monkeys,
                style:
                    const TextStyle(fontFamily: "RubikMonoOne", fontSize: 15),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 21.0,
                velocity: 3.0, //speed
                accelerationCurve: Curves.linear,
                decelerationCurve: Curves.easeOut,
              ),
            ),
          ),
          const Center(
            child: Text(
              'Я',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 17, 0),
                fontSize: 620,
                fontFamily: "Caravan",
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => _scrollTo(key1),
                        onHover: (hovering) {
                          setState(() => isHovering1 = hovering);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                          decoration: BoxDecoration(
                            color: isHovering1
                                ? const Color.fromARGB(255, 255, 255, 255)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Text(
                            isHovering1 ? 'мои проекты' : '!н.е. с.м.о.т.р.и',
                            style: TextStyle(
                                fontSize: 90,
                                color:
                                    isHovering1 ? Colors.black : Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (hovering) {
                          setState(() => isHovering = hovering);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                          decoration: BoxDecoration(
                            color: isHovering
                                ? const Color.fromARGB(255, 255, 255, 255)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Text(
                            isHovering ? 'мои стихи' : '!т.и.ш.е.',
                            style: TextStyle(
                                fontSize: 90,
                                color:
                                    isHovering ? Colors.black : Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (hovering) {
                          setState(() => isHoveringContacts = hovering);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                          decoration: BoxDecoration(
                            color: isHoveringContacts
                                ? const Color.fromARGB(255, 255, 0, 0)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: const Text(
                            'my контакты',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/sea');
                        },
                        onHover: (hovering) {
                          setState(() => isHoveringSea = hovering);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                          decoration: BoxDecoration(
                            color: isHoveringSea
                                ? Color.fromARGB(255, 0, 179, 255)
                                : Color.fromARGB(255, 91, 225, 255),
                          ),
                          child: const Text(
                            'море',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(children: [
                              Image.asset(
                                'lib/data/myp2.jpg',
                                height: 250,
                                width: 250,
                              ),
                              SizedBox(
                                height: 250,
                                width: 250,
                                child: Marquee(
                                  text: no_evil,
                                  style: const TextStyle(
                                      fontFamily: "RubikMonoOne", fontSize: 80),
                                  scrollAxis: Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  blankSpace: 20.0,
                                  velocity: 200.0, //speed
                                  pauseAfterRound: const Duration(seconds: 0),
                                  startPadding: 100.0,
                                  accelerationDuration:
                                      const Duration(seconds: 0),
                                  accelerationCurve: Curves.linear,
                                  decelerationDuration:
                                      const Duration(milliseconds: 0),
                                  decelerationCurve: Curves.easeOut,
                                ),
                              ),
                            ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Д У М И Л И Н'),
                                Text('Вадим Владиславович'),
                                Text('2003 г.р.'),
                                Text('РОССИЯ'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        const Text('мне 20 лет. живу в МО, г. Видное'),
                        const Text('Специализации: Программист, разработчик'),
                        const Text(''),
                        Text(about),
                        const SizedBox(
                          height: 111,
                        ),
                        SizedBox(
                          height: 111,
                        ),
                        SizedBox(
                          height: 111,
                        ),
                        SizedBox(
                          height: 400,
                        ),
                        Text(
                          'Мои проекты, над которыми я работал тут',
                          key: key1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
