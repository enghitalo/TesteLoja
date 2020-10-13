// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:modelo/variaveis_globais.dart';

Function() incrementer(int entrada, Function fnvar) {
  return () {
    print('teste');
    entrada++;
    fnvar(entrada);
  };
}

Function() decrementer(int entrada, Function fnvar) {
  return () {
    entrada--;
    fnvar(entrada);
  };
}

// Function() fnvar_ponteiro_cursor(Offset input) {
//   return () {
//     print('tô aqui');
//     ponteiro_cursor = input;
//   };
// }
