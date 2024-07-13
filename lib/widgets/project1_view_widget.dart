import 'package:flutter/material.dart';

Widget project1_view_widget() {
  return ExpansionTile(
    title: Text(
        '1. Программный комплекс для автоматизации работы спортивного зала (ФОК корпорации "Комета")'),
    children: [
      ListTile(
        title: Column(
          children: [
            Text('''
Целью разработки программного комплекса для автоматизации работы спортивного зала (на примере АО «Корпорация «КОМЕТА») является повышение качества предоставляемых услуг и улучшение удобство их использования.
Отдельной целью разработки настольного приложения является предоставление менеджеру функционала взаимодействия с данными, отражающие специфику спортивного направления в программном комплексе для автоматизации работы спортивного зала.
Отдельной целью разработки мобильного приложения является предоставление клиенту функционала для упрощения слежения за здоровьем и взаимодействием со спортивным направлением в программном комплексе для автоматизации работы спортивного зала.
'''),
            Text(''),
            Text('''
В рамках проекта была разработана база данных, которая была построена с использованием PostgreSQL - мощной системы управления реляционными базами данных. Она была спроектирована с учетом реляционного принципа, который обеспечивает эффективность и целостность данных. Кроме того, было уделено внимание важному аспекту - нормализации данных, благодаря чему база данных была доведена до 3-й нормальной формы, что гарантирует оптимальную организацию данных и обеспечивает более эффективный доступ к ним.
Для создания и управления записями из базы данных используется собственный программный интерфейс приложения, написанный на языке программирования Python.

'''),
            Column(
              children: [
                Image.asset(
                  'lib/data/pictures/kometa/desk2.png',
                  height: 300,
                  width: 500,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/desk3.png',
                  height: 300,
                  width: 500,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/desk4.png',
                  height: 300,
                  width: 500,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'lib/data/pictures/kometa/mob1.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob2.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob3.png',
                  height: 300,
                  width: 200,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'lib/data/pictures/kometa/mob4.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob5.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob6.png',
                  height: 300,
                  width: 200,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'lib/data/pictures/kometa/mob7.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob8.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob9.png',
                  height: 300,
                  width: 200,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'lib/data/pictures/kometa/mob10.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob11.png',
                  height: 300,
                  width: 200,
                ),
                Image.asset(
                  'lib/data/pictures/kometa/mob12.png',
                  height: 300,
                  width: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
