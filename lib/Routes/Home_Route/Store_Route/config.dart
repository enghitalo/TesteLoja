import 'package:flutter/material.dart';
import 'Store_Route.dart';

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

Map store_route_config = {
  'Clothing': {
    'index': 0,
    'categories': {
      'Masculino': {
        'Tecido 100% Algodão',
        'Tecido Denim',
        'Tecido de Linho',
        'Tecido Sarja',
        'Couro',
        'Boné aba reta',
        'Boné aba curva',
        'Chapéu pequeno',
        'Chapéu médio',
        'Chapéu grande',
        'Joias de ouro',
        'Joias de ouro branco',
        'Joias de prata',
        'Relogios suiço',
        'Relogios smartWatch',
        'Perfume amadeirado',
        'Perfume suave',
        'Perfume refrescante',
        'Creme de barbear',
      },
      'Feminino': {
        'Tecido 100% Algodão',
        'Tecido Denim',
        'Tecido de Linho',
        'Tecido Sarja',
        'Couro',
        'Boné aba reta',
        'Boné aba curva',
        'Chapéu pequeno',
        'Chapéu médio',
        'Chapéu grande',
        'Joias de ouro',
        'Joias de ouro branco',
        'Joias de prata',
        'Relogios suiço',
        'Relogios smartWatch',
        'Perfume amadeirado',
        'Perfume suave',
        'Perfume refrescante',
      },
      'Unissex': {
        'Shampoo',
        'Condicionador',
        'Hidradante',
        'Tecido 100% Algodão',
        'Tecido Denim',
        'Tecido de Linho',
        'Tecido Sarja',
        'Couro',
        'Boné aba reta',
        'Boné aba curva',
        'Chapéu pequeno',
        'Chapéu médio',
        'Chapéu grande',
        'Joias de ouro',
        'Joias de ouro branco',
        'Joias de prata',
        'Relogios suiço',
        'Relogios smartWatch',
        'Perfume amadeirado',
        'Perfume suave',
        'Perfume refrescante',
      },
      'Infantil': {
        'Tecido 100% Algodão',
        'Tecido Denim',
        'Tecido de Linho',
        'Tecido Sarja',
        'Bonés',
        'Chapéu',
        'Joias de ouro',
        'Joias de ouro branco',
        'Joias de prata',
        'Relogios',
        'Relogios smartWatch',
        'Perfumes',
      },
    },
    'asset':
        'assets/clothing/47692768_719391741791775_7047355136512454981_n.jpg',
    'page_config': {
      'Dimension_AdapterWidget_id': {
        'bool': true,
      },
      'Left_Filter_SideWidget_id': {
        'bool': true,
        'List': [
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
          'Joias',
          'Relógios',
        ],
      },
      'Right_shopping_cart_SideWidget_id': {
        'bool': true,
      },
      'Right_Filter_SideWidget_id': {
        'bool': true,
      },
    }
  },
  'Eventos': {
    'index': 1,
    'categories': {
      'Ingressos': {''},
      'Monte seu evento': {''},
      'Aluguel de equipamentos': {''},
    },
    'asset':
        'assets/Events/106560987_869893176832336_1537741072582036460_n.jpg',
    'page_config': {
      'Dimension_AdapterWidget_id': {
        'bool': false,
      },
      'Left_Filter_SideWidget_id': {
        'bool': false,
        'List': [],
      },
      'Right_Filter_SideWidget_id': {
        'bool': true,
      },
      'Right_shopping_cart_SideWidget_id': {
        'bool': false,
      },
    }
  },
  // 'Books',
  // 'Decoration',
  'Foods': {
    'index': 2,
    'categories': {
      // 'Café da manhã': {
      //   'carboidrados',
      //   'proteinas',
      // },
      'Lanche': {'hamburger', 'mini pizza', 'hotdog'},
      'Pizza': {'salgada', 'doce'},
      'Petisco': {'pastelzinho', 'mini coxinha', 'mini hamburger'},
      'Doces': {'confeitado', 'barras', 'brigadeiros', 'sovertes'},
      // 'Almoço': {'Entrada', 'Prato principal', 'Sobremesa', 'saladas'},
      // 'Café da tarde': {},
      // 'Janta': {'Entrada', 'Prato principal', 'Sobremesa', 'Salada'},
      'Bebidas': {
        'cafés',
        'chás',
        'Sucos',
        'Vitaminas',
        'Vinhos',
        'Destilados',
        'Cervejas'
      },
      'Japonês': {'Sushi', 'Temaki', 'Sashimi', 'Barcas', 'Outros'},
      'Hawaiano': {'Poke'},
    },
    'asset': 'assets/Food/ede16df88666cf58fe45a89fa722681a.gif',
    'page_config': {
      'Dimension_AdapterWidget_id': {
        'bool': false,
      },
      'Left_Filter_SideWidget_id': {
        'bool': false,
        'List': [],
      },
      'Right_Filter_SideWidget_id': {
        'bool': false,
      },
      'Right_shopping_cart_SideWidget_id': {
        'bool': true,
      },
    }
  },
  // 'Cleaning',
  // 'Properties',
  // 'Building',
  'Suporte': {
    'index': 3,
    'categories': {'Masculino', 'Feminino', 'Unissex', 'Infantil'},
    'asset':
        'assets/Suport/Loja-de-roupas-6-técnicas-certeiras-para-garantir-bom-atendimento-ao-cliente-1.jpg',
    'page_config': {
      'Dimension_AdapterWidget_id': {
        'bool': false,
      },
      'Left_Filter_SideWidget_id': {
        'bool': false,
        'List': [],
      },
      'Right_Filter_SideWidget_id': {
        'bool': false,
      },
      'Right_shopping_cart_SideWidget_id': {
        'bool': true,
      },
    }
  },
  'Plays': {
    'index': 4,
    'categories': {
      'Instrumentos musicais': {
        'Instrumentos de corda',
        'Instrumentos de sopro',
        'Instrumentos de percusão'
      },
      'Esportes': {
        'Futebol',
        'Skate',
        'Volei',
        'Tenis',
        'Ping-Pong',
        'Dança',
      },
      'Brinquedos e jogos': {'Brinquedos', 'Jogos'},
    },
    'asset': 'assets/Plays/39979682_554268425009632_3860132553411264512_n.jpg',
    'page_config': {
      'Dimension_AdapterWidget_id': {
        'bool': true,
      },
      'Left_Filter_SideWidget_id': {
        'bool': false,
        'List': [],
      },
      'Right_Filter_SideWidget_id': {
        'bool': false,
      },
      'Right_shopping_cart_SideWidget_id': {
        'bool': true,
      },
    }
  },
};
