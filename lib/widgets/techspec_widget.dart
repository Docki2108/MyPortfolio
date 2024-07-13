import 'package:flutter/material.dart';

Widget techspec() {
  return SizedBox(
    width: 700,
    child: Table(
      border: TableBorder.all(
        color: Colors.black,
        width: 2,
      ),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(500),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          decoration: BoxDecoration(color: Colors.black),
          children: <Widget>[
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Тип оборудования',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Наименование оборудования',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Размер экрана:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '15.6’’',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Разрешение экрана:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '1920x1080',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Процессор:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'AMD Ryzen 5 4500U',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '  Количество ядер процессора:  ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Оперативная память:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '16 ГБ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Видеокарта:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'AMD Radeon (TM) Graphics',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Общий объем накопителей:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '512 ГБ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Операционная система:',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TableCell(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Windows 11 Домашняя 23H2',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
