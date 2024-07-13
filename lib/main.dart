import 'dart:async';
import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vadim_dum/widgets/project1_view_widget.dart';
import 'package:vadim_dum/widgets/sections_widget.dart';
import 'package:vadim_dum/widgets/techspec_widget.dart';

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
  bool isHoveringim = false;

  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollControllerTech = ScrollController();

  final GlobalKey key1 = GlobalKey();
  final GlobalKey keyim = GlobalKey();
  final GlobalKey keyTech = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  void initState() {
    super.initState();
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
                sections_widget(
                    _scrollTo,
                    keyim,
                    setState,
                    isHoveringim,
                    key1,
                    isHovering1,
                    keyTech,
                    isHovering,
                    isHoveringContacts,
                    context,
                    isHoveringSea),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Row(
                            children: [
                              Stack(children: [
                                Image.asset(
                                  key: keyim,
                                  'lib/data/pictures/myp2.jpg',
                                  height: 500,
                                  width: 500,
                                ),
                                SizedBox(
                                  height: 250,
                                  width: 250,
                                  child: Marquee(
                                    text: no_evil,
                                    style: const TextStyle(
                                        fontFamily: "RubikMonoOne",
                                        fontSize: 80),
                                    scrollAxis: Axis.horizontal,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                        const Text('Проекты'),
                        Row(
                          children: [
                            Text(
                              key: key1,
                              'Проекты',
                              style: const TextStyle(
                                  fontFamily: "RubikMonoOne", fontSize: 80),
                            ),
                            const Text('мои проекты'),
                          ],
                        ),
                        const Text(''),
                        project1_view_widget(),
                        Row(
                          children: [
                            const Text(
                              'Более подробно можно ознакомиться тут - ',
                            ),
                            InkWell(
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'GitHub',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              onTap: () => launchUrlString(
                                  'https://github.com/Docki2108'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 111,
                        ),
                        Text(
                          key: keyTech,
                          'Технические характеристики того, что я использую при работе',
                          style: const TextStyle(
                              fontFamily: "RubikMonoOne", fontSize: 36),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        techspec(),
                        const SizedBox(
                          height: 111,
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
