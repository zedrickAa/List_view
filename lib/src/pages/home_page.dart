import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listview/src/datos/datos.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Elemento'),),
      body:_lista(),
          );
        }
      
        Widget _lista() {
          //print (datos.opciones);
        return FutureBuilder(
          future: datos.cargarData(),
          initialData: [],
          builder:(BuildContext context, AsyncSnapshot<List<dynamic>>snapshot){
            return ListView( 
              children: _listaItems(snapshot.data),

            );
          },
        
        
        
        );
         
        }
        List<Widget> _listaItems(List<dynamic>data){
          final List<Widget> opciones = [];
          data.forEach((opt){
          final widgetTemp = ListTile( 
            title: Text(opt['texto']),
            leading:Icon(Icons.assignment_ind, color: Colors.blue),
            trailing:Icon(Icons.arrow_forward, color: Colors.blue),
            onTap: (){},
          );

          opciones..add(widgetTemp)
                  ..add(Divider());
          });
        return opciones;
        }

}
