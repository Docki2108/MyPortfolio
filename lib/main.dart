import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'data/texts.dart';
import 'info.dart';

void main() {
  runApp(const MyApp());
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
        '/info': (context) => const info_page(),
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
      body: Stack(children: [
        Expanded(
          child: Marquee(
            text: monkeys,
            style: const TextStyle(fontFamily: "RubikMonoOne", fontSize: 15),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            blankSpace: 21.0,
            velocity: 3.0, //speed
            accelerationCurve: Curves.linear,
            decelerationCurve: Curves.easeOut,
          ),
        ),
        const Center(
          child: Text(
            'Не помню',
            style: TextStyle(
              fontSize: 720,
              fontFamily: "Caravan",
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (hovering) {
                    setState(() => isHovering = hovering);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    decoration: BoxDecoration(
                      color: isHovering
                          ? Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: const Text(
                      '!т.и.ш.е.',
                      style: TextStyle(fontSize: 90, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'lib/data/myp2.jpg',
                            height: 250,
                            width: 250,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Д У М И Л И Н'),
                              Text('Вадим Владиславович'),
                              Text('2003 г.р.'),
                              Text('РОССИЯ'),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 27,
                      ),
                      Container(
                        height: 54,
                      ),
                      Text('мне 20 лет. живу в МО, г. Видное'),
                      Text('+7 (901) 758-50-95 — предпочитаемый способ связи'),
                      Text('Специализации: Программист, разработчик'),
                      Text(''),
                      Text(
                          '''Знакомство с Dart и его фреймворком Flutter оставило очень теплое впечатление, закрепляя за
собой интерес в развитии мобильной разработки. Присутствует большое желание получить
дополнительный опыт разработки ПО в команде.

Опыт работа с Flutter - 18+ месяцев. За этот период принимал участие в разработке генератора
QR кодов и написал самостоятельный проект Сovid-информер, занимался самостоятельной разработкой программного комплекса для автоматизации работы спортивного зала (ФОК корпорации "Комета")

Также работал с такими языками программирования, как:
- C
- C++
- C#
- Java (Android)
- Python'''),
                      Text('''

2023
Английский язык. Pre-intermediate
GeekBrains

2023
Мобильная разработка. Направление: Мобильная разработка для Android
Траектория будущего

2023
Офисные приложения
Траектория будущего'''),
                      Text(''),
                      Text(''),
                      Text(''),
                      Container(
                        height: 354,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/info');
                        },
                        onHover: (hovering) {
                          setState(() => isHovering = hovering);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease,
                          decoration: BoxDecoration(
                            color: isHovering
                                ? const Color.fromARGB(255, 255, 0, 0)
                                : const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: const Text(
                            'my контакты',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
