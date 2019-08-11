import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget> [
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
        ]
      )
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text("Titulo"),
            subtitle: Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              )
            ],
          )
        ],
      )
    );

  }

  Widget _cardTipo2() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.worldatlas.com/r/w728-h425-c728x425/upload/0e/90/a0/shutterstock-796737793.jpg') ,
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www.worldatlas.com/r/w728-h425-c728x425/upload/0e/90/a0/shutterstock-796737793.jpg') ,
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Hola mundo')
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      )
    );

  }
}