import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuDatos{
  List<dynamic> opciones =[];
  _MenuDatos(){
   
  }
Future<List<dynamic>> cargarData() async{

final resp=await rootBundle.loadString('data/menu_opts.json');

Map dataMap = json.decode(resp);
print(dataMap['rutas']);
opciones = dataMap['rutas'];
return opciones;
}
}
final datos = new _MenuDatos();




