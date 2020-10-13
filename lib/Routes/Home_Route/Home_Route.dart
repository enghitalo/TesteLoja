import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:modelo/Routes/Home_Route/fn.dart';
import 'package:modelo/Routes/Home_Route/variaveis.dart';
import 'Store_Route/config.dart';
import 'UI_Custom.dart';
// import 'fn.dart';
// import 'package:modelo/variaveis_globais.dart';
import 'UI_Custom.dart';
import 'package:modelo/Routes/Home_Route/Store_Route/Store_Route.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class HomeRoute extends StatefulWidget {
  HomeRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeRoute createState() => _HomeRoute();
}

class _HomeRoute extends State<HomeRoute> with SingleTickerProviderStateMixin {
  ScrollController _scrollController = new ScrollController();
  TabController _tabController;

  void initState() {
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var salesWidgetListindex = 0;
    double rate = 1;
    fnSS_HomeRoute = () {
      fnSS(fn) {
        setState(fn);
      }
    };
    fnSS(fn) {
      setState(fn);
    }

    if (MediaQuery.of(context).size.width <=
        MediaQuery.of(context).size.height) {
      rate = 1;
    } else {
      rate = .5;
    }
    if (salesWidgetList.isEmpty) {
      for (var asset in salesAssetslist) {
        salesWidgetList.add(
          Container(
            width: MediaQuery.of(context).size.width * rate,
            height: (MediaQuery.of(context).size.width * rate) / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                // colorFilter:
                //     ColorFilter.mode(Colors.white70, BlendMode.lighten),
                fit: BoxFit.scaleDown,
                image: AssetImage(asset),
              ),
              // border: Border.all(),
            ),
            child: InkWell(
              onTap: () {
                print(asset);
              },
            ),
          ),
        );
      }
    } else {
      for (var asset in salesAssetslist) {
        salesWidgetList
            .replaceRange(salesWidgetListindex, salesWidgetListindex + 1, [
          Container(
            width: MediaQuery.of(context).size.width * rate,
            height: (MediaQuery.of(context).size.width * rate) / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                // colorFilter:
                //     ColorFilter.mode(Colors.white70, BlendMode.lighten),
                fit: BoxFit.scaleDown,
                image: AssetImage(asset),
              ),
              // border: Border.all(),
            ),
            child: InkWell(
              onTap: () {
                print(asset);
              },
            ),
          )
        ]);
        salesWidgetListindex++;
      }
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: MediaQuery.of(context).size.width,
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  actions: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.45),
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 35,
                        ),
                      ),
                    ),
                    InkWell(
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
                                      child: Center(
                                        child: Container(
                                          padding: EdgeInsets.all(75),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.8,
                                          // width: MediaQuery.of(context)
                                          //         .size
                                          //         .width *
                                          //     0.7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              // SizedBox(
                                              //   child: Stack(
                                              //     children: [
                                              //       Positioned(
                                              //         top: 1,
                                              //         right: 1,
                                              //         child:
                                              //             Icon(Icons.close),
                                              //       ),
                                              //     ],
                                              //   ),
                                              // ),
                                              Container(
                                                margin: EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                  border:
                                                      Border.all(width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                child: Icon(
                                                  Icons.person,
                                                  size: 100,
                                                ),
                                              ),
                                              Text('Login'),
                                              Container(
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  border:
                                                      Border.all(width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: TextField(
                                                  controller:
                                                      TextEditingController(
                                                          text: 'h'),
                                                ),
                                              ),
                                              Text('Senha'),
                                              Container(
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  border:
                                                      Border.all(width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: TextField(
                                                  obscureText: true,
                                                  controller:
                                                      TextEditingController(
                                                          text: '1'),
                                                ),
                                              ),
                                              RaisedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('Login'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.red[400],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Icon(Icons.close),
                                        ),
                                      ),
                                      right:
                                          (MediaQuery.of(context).size.width /
                                                  2) -
                                              (450 / 2) -
                                              5,
                                      top: (MediaQuery.of(context).size.height /
                                              10) -
                                          5,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.45),
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 35,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.45),
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                  elevation: 0,
                  pinned: true,
                  floating: true,
                  expandedHeight: (MediaQuery.of(context).size.width) * .16,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/hotel Wellness em Madridjpg.jpg',
                      // 'assets/clothing/47692768_719391741791775_7047355136512454981_n.jpg',
                      fit: BoxFit.cover,
                    ),
                    centerTitle: true,
                    title: Center(
                      child: Text("Hitalu's"),
                    ),
                  ),
                ),
                // SliverAppBar(
                //   backgroundColor: Colors.black,
                //   pinned: true,
                //   floating: false,
                //   flexibleSpace: FlexibleSpaceBar(
                //     centerTitle: true,
                //     title: Container(
                //       height: 120,
                //       decoration: BoxDecoration(),
                //       child:
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Container(
                //             margin: EdgeInsets.all(5),
                //             child: InkWell(
                //               onTap: incrementer(null, null),
                //               child: Text('Home'),
                //             ),
                //           ),
                //           Text(' | '),
                //           Container(
                //             margin: EdgeInsets.all(5),
                //             child: InkWell(
                //               onTap: incrementer(null, null),
                //               child: Text('Game'),
                //             ),
                //           ),
                //           Text(' | '),
                //           Container(
                //             margin: EdgeInsets.all(5),
                //             child: InkWell(
                //               onTap: incrementer(null, null),
                //               child: Text('Social Network'),
                //             ),
                //           ),
                //           Text(' | '),
                //           Container(
                //             margin: EdgeInsets.all(5),
                //             child: InkWell(
                //               onTap: incrementer(null, null),
                //               child: Text('News'),
                //             ),
                //           ),
                //           Text(' | '),
                //           Container(
                //             margin: EdgeInsets.all(5),
                //             child: InkWell(
                //               onTap: incrementer(null, null),
                //               child: Text('Artigos'),
                //             ),
                //           ),
                //         ],
                //       ),

                //     ),
                //   ),
                // ),
                SliverAppBar(
                  toolbarHeight: 0.1,
                  backgroundColor: Colors.black,
                  pinned: true,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(),
                  bottom: TabBar(
                    physics: PageScrollPhysics(),
                    indicatorPadding: EdgeInsets.only(bottom: 5),
                    indicatorWeight: 3,
                    indicatorColor: Colors.amberAccent,
                    controller: _tabController,
                    tabs: [
                      Tab(text: "Home"),
                      Tab(text: "Game"),
                      Tab(text: "Social Network"),
                      Tab(text: "News"),
                      Tab(text: "Artigos"),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    // height: MediaQuery.of(context).size.height+413,
                    height: 1500,
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * rate,
                              height:
                                  (MediaQuery.of(context).size.width * rate) /
                                      3,
                              child: ListView.builder(
                                itemCount: salesWidgetList.length,
                                physics: PageScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return salesWidgetList[index];
                                },
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            Home_page_categories(),
                            Container(
                              // margin: EdgeInsets.only(bottom: 10, top: 10),
                              width: MediaQuery.of(context).size.width * rate,
                              margin: EdgeInsets.all(5),
                              height: 500,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text('Título (Notícias)'),
                                  ),
                                  Center(
                                    child: Text('Imagem'),
                                  ),
                                  Container(
                                    child: Html(
                                      data: """
                                          
                                          <h1 style="text-align: center">header</h1>
                                      <div style="column-count:2">
                                      <table > <tr>
                                                <td><pre>  Lorem1 ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n\n  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.
                                                </pre></td>
                                                <td><pre> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</td>
                                              </pre></tr>
                                  
                                        </table>
                                      </div>""",
                                      style: {
                                        "pre": Style(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.all(10),
                                          // border: Border.all(width: 1),
                                          // backgroundColor: Colors.amber[50],
                                        ),
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: Color(0xff374750),
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                  _scrollController.animateTo(
                                    0.0,
                                    curve: Curves.easeOut,
                                    duration: const Duration(milliseconds: 400),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    'Voltar ao início',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Color(0xff475750),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Conheça-nos",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Nossa história",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Imprensa",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Carreiras",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Enviar sugestões",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Fale conosco",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Ganhe dinheiro conosco",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Seja um entregador(a)",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Seja um associado(a)",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Venda conosco",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Ações sociais",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Ajude uma causa",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Nossas causa",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "Aleatório",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text('data2'),
                        Text('data3'),
                        Text('data4'),
                        Text('data5'),
                      ],
                      controller: _tabController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
