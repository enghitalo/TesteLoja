// import 'dart:html';

import 'package:modelo/variaveis_globais.dart';

Function() incrementer(int entrada, Function fnvar) {
  return () {
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
