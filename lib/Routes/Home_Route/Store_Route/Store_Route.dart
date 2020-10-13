import 'dart:io';

import 'package:flutter/material.dart';
import 'UI_Custom.dart';
import 'fn.dart';
import 'package:modelo/variaveis_globais.dart';
import 'UI_Custom.dart';
import 'package:modelo/Routes/Home_Route/Store_Route/variaveis.dart';
import 'config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetch_Products_store() async {
  final response = await http.get('http://127.0.0.1:8000/teste/');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print('mada bala, amigo');
    // print(response.body);
    // print(Products_store.fromJson(json.decode(response.body)).marca);
    // return Products_store.fromJson(json.decode(response.body));
    lista_de_produtos = json.decode(response.body);
    // print(lista_de_produtos);
    return json.decode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// class Products_store {
//   final int id;
//   final int nome;
//   final String home_page_categories;
//   final String tipo;
//   // final String gender;
//   final String marca;
//   final String categoria;
//   final String subcategoria;

//   Products_store({this.home_page_categories, this.tipo, this.marca, this.categoria, this.subcategoria, this.nome, this.id});

//   factory Products_store.fromJson(Map<String, dynamic> json) {
//     return Products_store(
//       id: json['id'],
//       nome: json['nome'],
//       home_page_categories:json['home_page_categories'],
//       tipo: json['tipo'],
//       marca: json['marca'],
//       categoria: json['categoria'],
//       subcategoria: json['subcategoria'],

//     );
//   }
// }

// fn_api_request(String link) async {
//   fetch_Products_store();
//   // var i = 0;
//   // var l = await http.get(link);
//   // Map<dynamic, dynamic> myMap;
//   // print(l.body);
//   // lista_de_produtos = await json.decode(l.body);
//   // myMap = json.decode(l.body);
//   // print(json.decode(l.body).length);
//   // print(myMap);

//   // myMap.forEach(
//   //   (key, value) {
//   //     lista_de_produtos.add(json.decode(l.body).length[i]);
//   //     i++;
//   //   },
//   // );
//   // print('fetchAlbum()  ' + fetchAlbum().allMatches(string).toString());
//   // print('\n\n\n ' + lista_de_produtos[0]['nome'].toString() + '\n\n\n ');
//   // lista_de_produtos = json.decode(l.body);
// }

class StoreRoute extends StatefulWidget {
  StoreRoute({Key key, this.index}) : super(key: key);
  // final String title;
  final int index;

  @override
  _StoreRoute createState() => _StoreRoute();
}

class _StoreRoute extends State<StoreRoute> {
  @override
  void initState() {
    super.initState();
    fetch_Products_store();
  }

  @override
  Widget build(BuildContext context) {
    // fn_api_request('http://127.0.0.1:8000/teste/?home_page_categoriess=' +
    //     store_route_config.keys.toList()[widget.index].toString());

    ScrollController _scrollController = new ScrollController();
    width_screen = MediaQuery.of(context).size.width;
    height_screen = MediaQuery.of(context).size.height;
    isLandscape = height_screen <= width_screen;

    barra_superior() {
      // if (Platform.isAndroid || Platform.isIOS) {
      //   height_screen = MediaQuery.of(context).size.height - 20;
      //   return Container(
      //     decoration: BoxDecoration(color: Colors.black),
      //     child: Row(children: []),
      //     height: 20,
      //     width: width_screen,
      //   );
      // }
      if (true
          // ||
          //     Platform.isWindows ||
          //     Platform.isLinux ||
          //     Platform.isMacOS ||
          //     Platform.isFuchsia
          ) {
        height_screen = MediaQuery.of(context).size.height - 50;
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.white),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Previous'),
            ),
          ]),
          // height: 30,
          // width: 150,
        );
      }
    }

    void fnSS(fn) {
      setState(fn);
    }

    return Scaffold(
      body: Column(
        children: [
          //barra superior

          Stack(
            children: [
              //

              Positioned(
                // top: 10,
                // left: 10,
                child: DefauldWidget_id(
                  h: height_screen,
                  w: width_screen,
                  widget: Center(
                    child: Text('Defauld'),
                  ),
                ),
              ),
              //Dimension cloting
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 50,
                  width: 300,
                  child: Row(
                    children: [
                      barra_superior(),
                      Container(
                        decoration: BoxDecoration(border: Border.all()),
                        height: 50,
                        width: 50,
                        child: Text('Dimen.'),
                      ),
                    ],
                  ),
                ),
              ),
              //Título
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    TitleWidget_id(
                      h: 25,
                      w: 250,
                      widget: Center(
                        child: Text(store_route_config.keys
                            .toList()[widget.index]
                            .toString()),
                      ),
                    ),
                    SearcherWidget_id(
                      h: 25,
                      w: 90,
                      widget: Center(
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            Text('Search'),
                            // TextField(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Carrinho icon
              Positioned(
                top: 10,
                right: 80,
                child: Listener(
                  onPointerDown: (event) {
                    fnSS(
                      incrementer(
                        counter,
                        fnvar_counter,
                      ),
                    );
                    setState(() {
                      // fghf;
                      _scrollController.jumpTo(
                        100,
                      );
                    });
                  },
                  child: DefauldWidget_id(
                    h: 50,
                    w: 50,
                    widget: Stack(children: [
                      Center(
                        child: Icon(Icons.shopping_cart),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: CarrinhoWidget_id(
                          h: 18,
                          w: 18,
                          widget: Center(
                            child: Text(
                              counter.toString(),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              //Minha conta icon
              Positioned(
                top: 10,
                right: 10,
                child: AcconuntWidget_id(
                  h: 50,
                  w: 50,
                  widget: Stack(children: [
                    Center(
                      child: Icon(Icons.person),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: DefauldWidget_id(
                          h: 18,
                          w: 18,
                          widget: Center(
                            child: Text('0'),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              //Left_Filter_SideWidget_id
              Positioned(
                top: 70,
                left: 0,
                bottom: 0,
                child: Left_Filter_SideWidget_id(
                  //(Portrait)=0
                  //(Landscabe)=height_screen-top
                  h: height_screen - 70.0,
                  //w fixo
                  w: 110,
                ),
              ),
              //Up_Filter_SideWidget_id
              // Positioned(
              //   top: 70,
              //   left: 0.0,
              //   right: 0.0,
              //   child: Center(
              //     child: Up_Filter_SideWidget_id(
              //       h: 40,
              //       w: width_screen - 230,
              //       widget: Center(
              //         child: Text('Up_Filter_SideWidget_id'),
              //       ),
              //     ),
              //   ),
              // ),
              //Right_Filter_SideWidget_id
              Positioned(
                top: 70,
                bottom: height_screen / 2,
                right: 0,
                child: Right_Filter_SideWidget_id(
                  h: 300,
                  w: 110,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Peças'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.face),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.shopping_bag),
                          ),
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 60,
                            width: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 40,
                            width: 40,
                            child: Icon(Icons.watch),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 60,
                            width: 40,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            height: 40,
                            width: 80,
                            child: Text('cosméticos'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Lista de carrinho
              Positioned(
                top: height_screen / 2,
                bottom: 0,
                right: 0,
                child: Right_shopping_cart_SideWidget_id(
                  h: 300,
                  w: 110,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Carrinho'),
                      SizedBox(
                        height: (height_screen / 2) - 120,
                        width: 300,
                        child: ListView(
                          children: [
                            Text('[] Camisa    RS 999,99'),
                            Text('[] Calça      RS 99,99'),
                            Text('[] Relógio    RS 99,99'),
                            Text('[] Camisa    RS 999,99'),
                            Text('[] Calça      RS 99,99'),
                            Text('[] Relógio    RS 99,99'),
                            Text('[] Camisa    RS 999,99'),
                            Text('[] Calça      RS 99,99'),
                            Text('[] Relógio    RS 99,99'),
                          ],
                        ),
                      ),
                      Text('Total:     RS 9.000,00'),
                      Wrap(
                        alignment: WrapAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            onPressed: () {},
                            child: Text('Finalizar compra'),
                          ),
                          RaisedButton(
                            onPressed: () {},
                            child: Text('Adicionar a lista de desejos'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //Product_Wrap_id //Product_List_id
              Product_Wrap_id(
                categories: store_route_config.values.toList()[widget.index]
                    ['categories'],
                scrollController: _scrollController,
                widgets: Product_List_id(
                  h: 130.0,
                  w: 115.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
