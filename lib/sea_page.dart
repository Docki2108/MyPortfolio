import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:marquee/marquee.dart';

import 'data/texts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(useMaterial3: true),
      initialRoute: '/sea',
    );
  }
}

class sea_page extends StatefulWidget {
  const sea_page({super.key});

  @override
  State<sea_page> createState() => _sea_pageState();
}

class _sea_pageState extends State<sea_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(
              child: BlurHash(hash: 'GaFH72ogD*WUaKaxWBj@.ARiWFt6ofj[f8jt'),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 140, 255),
                fontSize: 20.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('море'),
                  WavyAnimatedText('волнуется'),
                  WavyAnimatedText('раз'),
                  WavyAnimatedText('море'),
                  WavyAnimatedText('волнуется'),
                  WavyAnimatedText('два'),
                  WavyAnimatedText('море'),
                  WavyAnimatedText('волнуется'),
                  WavyAnimatedText('три'),
                  WavyAnimatedText('морская фигура замри!'),
                  WavyAnimatedText('......................................'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
