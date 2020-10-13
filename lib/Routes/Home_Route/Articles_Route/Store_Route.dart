import 'package:flutter/material.dart';
import 'UI_Custom.dart';
import 'fn.dart';
import 'package:modelo/variaveis_globais.dart';
import 'UI_Custom.dart';
import 'package:modelo/Routes/Home_Route/Store_Route/variaveis.dart';

class StoreRoute extends StatefulWidget {
  StoreRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _StoreRoute createState() => _StoreRoute();
}

class _StoreRoute extends State<StoreRoute> {
  @override
  Widget build(BuildContext context) {
    void fnSS(fn) {
      setState(fn);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Listener(
              onPointerDown: (event) {
                print(event);
                fnSS(
                  incrementer(counter, fnvar_counter),
                );
              },
              child:
                  Container(height: 150, width: 150, child: DefauldWidget_id()),
            ),
            Listener(
              onPointerDown: (event) =>
                  fnSS(decrementer(counter, fnvar_counter)),
              child: Text(
                'You have pushed the button this many times:',
              ),
            ),
            Listener(
              onPointerDown: (event) =>
                  fnSS(incrementer(counter, fnvar_counter)),
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Listener(
        onPointerDown: (event) {
          fnSS(incrementer(counter, fnvar_counter));
        },
        child: Container(
          child: FloatingButton_id(),
        ),
      ),
    );
  }
}
