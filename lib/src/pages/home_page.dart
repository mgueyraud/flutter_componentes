import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
  Widget _lista() {

    // print(menuProvider.opciones);
    // menuProvider.cargarData()
    //   .then((opciones){

    //   });

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );  

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue ),
        onTap: (){

          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );

          // //Como para nevagar a otra pagina siempre manteniendo al padre
          // Navigator.push(context, route);

        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());

    });

    return opciones;
  }
}
