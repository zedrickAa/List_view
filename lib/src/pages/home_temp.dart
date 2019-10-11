import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
 final figuras=['Cuadro','Triangulo','Cuadrado','Circulo','Rectangulo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title: Text('Elementos Temporales'),),
              body: ListView(children: _2crearElemento()),);
 
  }

  List<Widget> _cerrarElemento(){
    List<Widget>lista = new List<Widget>();
    for(String op in figuras){
      final tempWidget = ListTile(title: Text(op),);
      lista..add(tempWidget)
           ..add(Divider());
    }
    return lista;
  }

  List <Widget> _2crearElemento(){
    return figuras.map((item){

      return Column(
        children: <Widget>[
          ListTile(title: Text(item+'...'),
          
                    subtitle: Text('Texto agregado'),
                    leading: Icon(Icons.accessibility_new),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: (){},
          
          ),
          Divider()
        ],
      );

    }).toList();

  }

  




}