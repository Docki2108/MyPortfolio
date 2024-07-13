// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

Widget sections_widget(
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
    isHoveringSea) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => _scrollTo(keyim),
          onHover: (hovering) {
            setState(() => isHoveringim = hovering);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
            decoration: BoxDecoration(
              color: isHoveringim
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : const Color.fromARGB(255, 0, 0, 0),
            ),
            child: Text(
              isHoveringim ? 'айда по-новой' : '!в.а.д.и.м.',
              style: TextStyle(
                  fontSize: 90,
                  color: isHoveringim ? Colors.black : Colors.white),
            ),
          ),
        ),
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
              isHovering1 ? 'мои проекты' : '!с.м.о.т.р.и',
              style: TextStyle(
                  fontSize: 90,
                  color: isHovering1 ? Colors.black : Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () => _scrollTo(keyTech),
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
              isHovering ? 'железо' : '!з.в.о.н.',
              style: TextStyle(
                  fontSize: 90,
                  color: isHovering ? Colors.black : Colors.white),
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
                  ? const Color.fromARGB(255, 0, 179, 255)
                  : const Color.fromARGB(255, 91, 225, 255),
            ),
            child: const Text(
              'море',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}
