import 'package:flutter/material.dart';

Map defauldWidget_config = {};
Map floatingButton_config = {};

Map metas = {
  'NPS': {
    'fomato': '#.##%',
    'meta': .61,
    'Ordem': 'Crescente',
    //FORMULA= (valor/meta)-0
    'codicionais': [
      {'primeiro': .0, 'segundo': .10, 'color': Color(0xFFFF0000)},
      {'primeiro': .10, 'segundo': .61, 'color': Color(0xFFFFFF00)},
      {'primeiro': .61, 'segundo': .100, 'color': Color(0xFF00FF00)},
      {'primeiro': -.5, 'segundo': .0, 'color': Color(0xFF000000)},
    ],
  },
  'Despesas': {
    'fomato': '#.##%',
    'meta': 1000,
    'Ordem': 'Descrescente',
    //FORMULA= (valor/meta)-1
    'codicionais': [
      {
        'primeiro': double.negativeInfinity,
        'segundo': .80,
        'color': Color(0xFFFF0000)
      },
      {
        'primeiro': .80,
        'segundo': .100,
        'color': Color(0xFFFFFF00),
      },
      {
        'primeiro': .100,
        'segundo': .110,
        'color': Color(0xFF00FF00),
      },
      {
        'primeiro': .110,
        'segundo': double.infinity,
        'color': Color(0xFF00FFFF)
      },
    ],
  }
};
