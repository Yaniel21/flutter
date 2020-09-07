import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', ' cinco', 'seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporales'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  /* List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
      //operador en cascada, va sin coma despues del temp
      //lista.add(Divider());
    }

    return lista;
  } */

  List<Widget> _crearItemsCorta() {
    
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
           title: Text(item + '!'),
            subtitle: Text('Subtítulo'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              
            },
          ),
          Divider()
        ],
      );
    }).toList();

    
  }
}
