import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';

@UseRowClass(Usuario, constructor: 'desdeBaseDeDatos')
class TblUsuario extends Table {
  IntColumn get id => integer()();
  TextColumn get nombre_completo => text()();
  TextColumn get correo => text()();
  TextColumn get telefono => text()();
  TextColumn get nit => text()();
  TextColumn get ci => text()();
  TextColumn get alias => text()();
  TextColumn get contrasenia => text()();

  @override
  Set<Column> get primaryKey => {id};
}
