import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

@UseRowClass(Visita)
class TblVisita extends Table {
  IntColumn get visId => integer()();
  IntColumn get rutId => integer()();
  IntColumn get dirClId => integer()();
  TextColumn get visComentario => text()(); 

  TextColumn get nombreCliente => text()(); 
  TextColumn get nombreSucursalCliente => text()(); 
  BoolColumn get visEstadoDel => boolean()(); 
  RealColumn get sucursalLatitud => real()();
  RealColumn get sucursalLongitud => real()(); 
  TextColumn get nombreZona => text()(); 
  TextColumn get direccion => text()(); 
  TextColumn get nombreVendedor => text()(); 
  TextColumn get nombreRuta => text()(); 

  DateTimeColumn get fechaEjecucionRuta => dateTime()();
  DateTimeColumn get visFechaCreacion => dateTime()();

  @override
  Set<Column> get primaryKey => {visId};
}