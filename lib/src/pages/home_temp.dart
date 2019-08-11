import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp')
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = List<Widget>();

    for (int opt in options) {

      final tempWidget = ListTile(
        title: Text(opt.toString()),
      );

      lista..add( tempWidget )
           ..add(Divider());
           
    }

    return lista;
  }

  List<Widget> _crearItemsCorto(){

    var widgets = options.map((int item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item.toString() + "!"),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.accessible),
            trailing: Icon(Icons.arrow_back),
            onTap: (){
              
            },
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }

}