import 'dart:html';

import 'package:flutter/material.dart';
import 'package:modelo/Routes/Home_Route/Store_Route/variaveis.dart';

import '../fn.dart';
import 'UI_Painter.dart';
import 'config.dart';

Widget DefauldWidget_id({double h, double w, Widget widget}) {
  return
      // CustomPaint(
      //   willChange: true,
      //   painter: DefauldWidget_Painter(h, w),
      Container(
    decoration: BoxDecoration(border: Border.all()),
    height: h,
    width: w,
    child: widget,
    // ),
  );
}

Widget Dimension_AdapterWidget_id({double h, double w, Widget widget}) {
  return
      // CustomPaint(
      //   willChange: true,
      //   painter: DefauldWidget_Painter(h, w),
      //   child:
      Container(
    decoration: BoxDecoration(border: Border.all()),
    height: h,
    width: w,
    child: widget,
    // ),
  );
}

Widget SearcherWidget_id({double h, double w, Widget widget}) {
  return
      // CustomPaint(
      //   willChange: true,
      //   painter: DefauldWidget_Painter(h, w),
      //   child:
      Container(
    margin: EdgeInsets.all(3),
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
    ),
    height: h,
    width: w,
    child: widget,
    // ),
  );
}

Widget TitleWidget_id({double h, double w, Widget widget}) {
  return
      // CustomPaint(
      //   willChange: true,
      //   painter: DefauldWidget_Painter(h, w),
      //   child:
      Container(
    decoration: BoxDecoration(border: Border.all()),
    height: h,
    width: w,
    child: widget,
    // ),
  );
}

Widget CarrinhoWidget_id({double h, double w, Widget widget}) {
  print(h);
  return
      // CustomPaint(
      //   willChange: true,
      //   painter: DefauldWidget_Painter(h, w),
      //   child:
      Container(
    decoration: BoxDecoration(
      border: Border.all(),
    ),
    height: h,
    width: w,
    child: widget,
    // ),
  );
}

Widget AcconuntWidget_id({double h, double w, Widget widget}) {
  return
      // CustomPaint(
      //   willChange: true,
      //   painter: DefauldWidget_Painter(h, w),
      //   child:
      Container(
    decoration: BoxDecoration(border: Border.all()),
    height: h,
    width: w,
    child: widget,
    // ),
  );
}

class Left_Filter_SideWidget_id extends StatefulWidget {
  final h;
  final w;

  const Left_Filter_SideWidget_id({Key key, this.h, this.w}) : super(key: key);
  @override
  _Left_Filter_SideWidget_idState createState() =>
      _Left_Filter_SideWidget_idState();
}

class _Left_Filter_SideWidget_idState extends State<Left_Filter_SideWidget_id> {
  @override
  var left = 15.0;

  Widget build(BuildContext context) {
    List<Widget> options = [];
    for (var item in [
      'Esporte',
      'Country',
      'Casual',
      'Formal',
      'Íntimo',
      'Piscina/Praia',
      'Escritório',
      'Inverno',
      'Pijama',
      'Uniforme',
    ]) {
      options.add(
        Container(
          height: 25,
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Row(
            children: [
              Checkbox(value: false, onChanged: null),
              Text(item),
            ],
          ),
        ),
      );
    }
    if (isLandscape) {
      return Container(
          // margin: EdgeInsets.only(top: 100),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
          ),
          height: MediaQuery.of(context).size.height - 70.0,
          width: 140,
          child: ListView(children: options)
          // ),
          );
    } else {
      if (isOnleft) {
        return Listener(
          onPointerExit: (event) {
            print('saiu exit');
            setState(
              () {
                isOnleft = false;
                left = 15.0;
                // print(left);
              },
            );
          },
          child:
              // CustomPaint(
              //   willChange: true,
              //   painter: DefauldWidget_Painter(widget.h, a),
              //   child:
              Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),

            height: widget.h,
            width: left,
            child: ListView(children: options),
            // ),
          ),
        );
      } else {
        return Listener(
          onPointerMove: (event) {
            print('entrou');
            setState(
              () {
                print('testa  lek');
                left = 0;
                print(left);
                isOnleft = true;
              },
            );
          },
          onPointerDown: (event) {
            print('entrou');
            setState(
              () {
                print('testa  lek');
                left = 0;
                print(left);
                isOnleft = true;
              },
            );
          },
          onPointerEnter: (event) {
            print('entrou');
            setState(
              () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (BuildContext context, _, __) {
                        return Scaffold(
                          backgroundColor: Colors.white.withOpacity(0.85),
                          body: Stack(
                            children: [
                              Positioned(
                                top: 190,
                                left: 0,
                                bottom: 0,
                                child: Listener(
                                  onPointerExit: (event) {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(),
                                      ),
                                      height:
                                          MediaQuery.of(context).size.height -
                                              70.0,
                                      width: 140,
                                      child: ListView(children: options)
                                      // ),
                                      ),
                                ),

                                // Left_Filter_SideWidget_id(
                                //   //(Portrait)=0
                                //   //(Landscabe)=height_screen-top
                                //   h: height_screen - 70.0,
                                //   //w fixo
                                //   w: 110,
                                // ),
                              ),
                            ],
                          ),
                        );
                      } // this is the main reason of transparency at next screen. I am ignoring rest implementation but what i have achieved is you can see.)}, // this is the main reason of transparency at next screen. I am ignoring rest implementation but what i have achieved is you can see.}

                      ),
                );
                print('testa  lek');
                left = 0;
                print(left);
                isOnleft = true;
              },
            );
          },
          child:
              // CustomPaint(
              //   willChange: true,
              //   painter: DefauldWidget_Painter(widget.h, a),
              //   child:
              Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            height: widget.h,
            width: left,
            // ),
          ),
        );
      }
    }
  }
}

Widget Up_Filter_SideWidget_id({double h, double w, Widget widget}) {
  if (isLandscape) {
    return
        // CustomPaint(
        //   willChange: true,
        //   painter: Up_Filter_SideWidget_Painter(h, w),
        //   child:
        Container(
      margin: EdgeInsets.only(left: 110, right: 110),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      height: h,
      width: w,
      child: widget,
      // ),
    );
  } else {
    return
        // CustomPaint(
        //   willChange: true,
        //   painter: DefauldWidget_Painter(h, w + 230),
        //   child:
        Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      height: h,
      // width: w + 230,
      child: widget,
      // ),
    );
  }
}

Widget Right_shopping_cart_SideWidget_id({double h, double w, Widget widget}) {
  if (isLandscape) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      height: h,
      width: 140,
      child: widget,
    );
  } else {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      height: h,
      width: 5.0,
    );
  }
}

Widget Right_Filter_SideWidget_id({double h, double w, Widget widget}) {
  if (isLandscape) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      height: h,
      width: 140,
      child: widget,
    );
  } else {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      height: h,
      width: 5.0,
    );
  }
}

class Product_Wrap_id extends StatefulWidget {
  final categories;
  final h;
  final w;
  final scrollController;
  final List<Widget> widgets;

  const Product_Wrap_id(
      {Key key,
      this.h,
      this.w,
      this.widgets,
      this.scrollController,
      this.categories})
      : super(key: key);
  @override
  _Product_Wrap_idState createState() => _Product_Wrap_idState();
}

class _Product_Wrap_idState extends State<Product_Wrap_id>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  var top;
  var bottom;
  var left;
  var right;

  // double left;
  // double right;

  List<Widget> tabsCategories = [];
  List<Widget> tabViewsCategories = [];

  void initState() {
    _tabController = TabController(
        length: widget.categories.length, vsync: this, initialIndex: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tabsCategories.clear();
    tabViewsCategories.clear();
    var idx;
    idx = 0;
    // print(widget.categories.values.toString());
    for (var item in widget.categories.keys) {
      idx++;
      tabsCategories.add(
        Tab(text: item.toString()),
      );

      tabViewsCategories.add(
        ListView.builder(
          controller: widget.scrollController,
          itemCount: widget.categories[item].length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Center(
                  child: Text(
                    widget.categories[item].toList()[index].toString(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: widget.widgets,
                )
              ],
            );
          },
        ),
      );
    }
    idx = 0;

    if (isLandscape) {
      setState(() {
        top = 70;
        bottom = 0;
        left = 145;
        right = 145;
      });
    } else {
      setState(() {
        top = 70;
        bottom = 0;
        left = 26;
        right = 6;
      });
    }

    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      // child:
      // CustomPaint(
      //   willChange: true,
      //   painter:
      //       DefauldWidget_Painter(height_screen - 110, width_screen - 230),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 0.1,
            backgroundColor: Colors.transparent,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(),
            bottom: TabBar(
              labelColor: Colors.black,
              physics: PageScrollPhysics(),
              indicatorPadding: EdgeInsets.only(bottom: 5),
              indicatorWeight: 3,
              indicatorColor: Colors.black,
              controller: _tabController,
              tabs: tabsCategories,
            ),
          ),
          SliverToBoxAdapter(
            child: Up_Filter_SideWidget_id(h: 50),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: height_screen - 180,
              child: TabBarView(
                children: tabViewsCategories,
                controller: _tabController,
              ),
            ),
          ),
        ],
      ),

      // ),
    );
  }
}

class Product_id extends StatefulWidget {
  final id;
  final index;
  final h;
  final w;

  const Product_id({Key key, this.h, this.w, this.index, this.id})
      : super(key: key);

  @override
  _Product_idState createState() => _Product_idState();
}

class _Product_idState extends State<Product_id> {
  // Future<String> la;
  @override
  Widget build(BuildContext context) {
    // futuretext() {
    // return Center(
    //   child: FutureBuilder(
    //     future: la,
    //     builder: (context, snapshot) {
    //       return Text(snapshot.data);
    //     },
    //   ),
    // );
    // }

    var isEnter = false;
    // print('Product_id isEnter: ${key}');
    Map map_valores = {
      'venda': 100.01,
      'aluguel': 101.01,
      'experimentar': 102.01,
    };

    List<Widget> valores = [];
    map_valores.forEach(
      (key, value) {
        valores.add(
          Container(
            margin: EdgeInsets.all(0.9),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            child: Row(
              children: [
                Text(
                  key.toString() + ": ",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  value.toString(),
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        );
      },
    );

    var detalhes = ['cor', 'recomendações', 'história'];
    isEnter = isEnter_Product_List[widget.index];
    if (isEnter) {
      return Listener(
        onPointerEnter: (event) {
          isEnter_Product_List
              .replaceRange(widget.index, widget.index + 1, [true]);
          setState(() {
            isEnter = isEnter_Product_List[widget.index];
          });
        },
        onPointerExit: (event) {
          isEnter_Product_List
              .replaceRange(widget.index, widget.index + 1, [false]);
          setState(() {
            isEnter = isEnter_Product_List[widget.index];
          });
        },
        onPointerDown: (event) {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
          ),
          margin: EdgeInsets.only(top: 10, left: 2, right: 2),
          height: widget.h + (map_valores.length * 25),
          width: widget.w,
          child: Stack(
            children: [
              Positioned(
                top: 3,
                left: 3,
                child: InkWell(
                  onTap: () {
                    incrementer(
                      counter,
                      fnvar_counter,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    // height: 20,
                    // width: 20,
                    child: Center(
                      child: Icon(
                        Icons.add_shopping_cart_sharp,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 3,
                right: 3,
                child: InkWell(
                  onTap: () {},
                  onTapDown: (details) {
                    print('details.globalPosition: ' +
                        details.globalPosition.toString());
                    print('details.kind: ' + details.kind.toString());
                    print('details.localPosition: ' +
                        details.localPosition.toString());
                    Navigator.of(context).push(
                      PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (BuildContext context, _, __) {
                            return Scaffold(
                              backgroundColor: Colors.white.withOpacity(0.40),
                              body: Stack(
                                children: [
                                  Positioned(
                                    top: details.globalPosition.dy -
                                        details.localPosition.dy,
                                    left: details.globalPosition.dx +
                                        details.localPosition.dx,
                                    child: Listener(
                                      onPointerExit: (event) {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.zero,
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onDoubleTap: () {},
                                              child: Text('cores'),
                                            ),
                                            InkWell(
                                              onDoubleTap: () {},
                                              child: Text('recomendações'),
                                            ),
                                            InkWell(
                                              onDoubleTap: () {},
                                              child: Text('artigos'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    child: Icon(
                      Icons.list,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: widget.h,
                child: SizedBox(
                  height: map_valores.length * 30.0,
                  width: widget.w,
                  child: Column(children: valores),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Listener(
        onPointerEnter: (event) {
          isEnter_Product_List
              .replaceRange(widget.index, widget.index + 1, [true]);
          setState(() {
            isEnter = isEnter_Product_List[widget.index];
          });
          // print('bora ver agora verdadeiro ${widget.index}');
          // print(isEnter_Product_List);
        },
        onPointerExit: (event) {
          isEnter_Product_List
              .replaceRange(widget.index, widget.index + 1, [false]);
          setState(() {
            isEnter = isEnter_Product_List[widget.index];
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
          ),
          margin: EdgeInsets.all(2),
          height: widget.h,
          width: widget.w,
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: Text(widget.id),
                ),
              ),
              Positioned(
                top: 7,
                left: 4,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                  // height: 20,
                  // width: 20,
                  child: Center(
                    child: Icon(
                      Icons.add_shopping_cart_sharp,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 7,
                right: 4,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                  child: InkWell(
                    onTapDown: (details) {},
                    child: Center(
                      child: Icon(
                        Icons.list,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

Product_List_id({double h, double w}) async {
  // return null;
  isEnter_Product_List = [];
  List<Widget> lista_de_widgets_temporario = [];

  print(lista_de_produtos);
  var i = 0;
  for (var item in await lista_de_produtos) {
    print(i);
    isEnter_Product_List.add(false);
    lista_de_widgets_temporario.add(Text(item)
        // Product_id(
        //   // id: item[i]['id'],
        //   index: i,
        //   h: h,
        //   w: w,
        // ),
        );
    i++;
  }
  // Stream<int> _bids = (() async* {
  //   await Future<void>.delayed(Duration(seconds: 1));
  //   yield 2;
  //   await Future<void>.delayed(Duration(seconds: 1));
  // })();
  // Stream<List<Widget>> prudi = (() async {
  //   await lista_de_produtos;
  // });
  // return lista_de_widgets_temporario;
  return StreamBuilder(
      stream: null,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        List<Widget> children;
        if (snapshot.hasError) {
          children = <Widget>[
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            )
          ];
        } else {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              children = <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.blue,
                  size: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Select a lot'),
                )
              ];
              break;
            case ConnectionState.waiting:
              children = <Widget>[
                SizedBox(
                  child: const CircularProgressIndicator(),
                  width: 60,
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting bids...'),
                )
              ];
              break;
            case ConnectionState.active:
              children = <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('\$${snapshot.data}'),
                )
              ];
              break;
            case ConnectionState.done:
              children = <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.blue,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('\$${snapshot.data} (closed)'),
                )
              ];
              break;
          }
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        );
      });
}
