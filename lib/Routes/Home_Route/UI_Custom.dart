import 'package:flutter/material.dart';
import 'package:modelo/Routes/Home_Route/variaveis.dart';
// import 'package:modelo/Routes/Store_Route/Store_Route.dart';
import 'Store_Route/Store_Route.dart';
// import '../../variaveis_globais.dart';
import 'Store_Route/config.dart';
import 'UI_Painter.dart';
import 'config.dart';
// import 'fn.dart';

// Widget DefauldWidget_id({double h, double w, Widget widget}) {
//   return CustomPaint(
//     willChange: true,
//     painter: DefauldWidget_Painter(h, w),
//     child: 
//     SizedBox(
//       height: h,
//       width: w,
//       // child: widget,
//     ),
//   );
// }

// Widget FloatingButton_id() {
//   return FloatingActionButton(
//     onPressed: () {},
//     tooltip: 'Increment',
//     child: Icon(Icons.add),
//   );
// }

// var f = Text('textSkkakkkkkkkkkkn');
// var tes = f.data.length.toString();

// Menu() {
//   List<Widget> Menu_list = [];
//   itens_do_menu.forEach((key, value) {
//     Menu_list.add(
//       Listener(
//           // onPointerDown: (event) {
//           //   value['function'];
//           //   print('Dentro');
//           //   // () {
//           //   //   value['function'];
//           //   // };
//           //   // print(value['function'].toString());
//           //   // if (paiter_path[0].contains(event.localPosition)) {
//           //   //   // fnSS;
//           //   //   value['function'];

//           //   //   print('Dentro');
//           //   // }
//           // },
//           child: value['custom']
//           // Text('data')

//           ),
//     );
//   });
//   return Menu_list;
// }

class Home_page_categories extends StatefulWidget {
  @override
  _Home_page_categoriesState createState() => _Home_page_categoriesState();
}

class _Home_page_categoriesState extends State<Home_page_categories> {
  List categories = [
    'Clothing',
    'Eventos',
    // 'Books',
    // 'Decoration',
    'Foods',
    // 'Cleaning',
    // 'Properties',
    // 'Building',
    'Suporte',
    'Plays',
  ];


  @override
  Widget build(BuildContext context) {
    List<Widget> categories_widget = [];
    width = 10;
    if (MediaQuery.of(context).size.width <=
        MediaQuery.of(context).size.height) {
      width = MediaQuery.of(context).size.width;
    } else {
      width = MediaQuery.of(context).size.height;
    }

    for (var item in categories) {
      var gg = ColorFilter.mode(Color(0x70909090), BlendMode.lighten);
      categories_widget.add(
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return StoreRoute(
                    index: categories.indexOf(item),
                  );
                },
              ),
            );
          },
          onHover: (value) {
            if (value) {
              setState(() {
                // categories_widget[0].
                gg = null;
              });
            } else {
              gg = ColorFilter.mode(Colors.white70, BlendMode.lighten);
            }
          },
          child: Container(
            margin: EdgeInsets.all(2),
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: gg,
                fit: BoxFit.fitHeight,
                image: AssetImage(store_route_config.values
                        .toList()[categories.indexOf(item)]['asset']
                        .toString()

                    // asset[categories.indexOf(item)],
                    // 'assets/clothing/47692768_719391741791775_7047355136512454981_n.jpg',
                    ),
              ),
              // border: Border.all(color: Colors.black12),
            ),
            width: width / 5.5,
            height: width / 3,
            child: Center(
              child: Text(
                item.toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      width: width,
      height: (width) / 3,
      decoration: BoxDecoration(
          // border: Border.all(),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: categories_widget,
      ),
    );
  }
}
