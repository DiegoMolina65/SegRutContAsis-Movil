import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

@UseRowClass(Visita)
class TblVisita extends Table {
  IntColumn get visId => integer()();
  IntColumn get rutId => integer()();
  IntColumn get dirClId => integer()();
  TextColumn get visComentario => text()();

  TextColumn get nombreCliente => text().nullable()();
  TextColumn get nombreSucursalCliente => text().nullable()();
  BoolColumn get visEstadoDel => boolean().nullable()();
  RealColumn get sucursalLatitud => real().nullable()();
  RealColumn get sucursalLongitud => real().nullable()();
  TextColumn get nombreZona => text().nullable()();
  TextColumn get direccion => text().nullable()();
  TextColumn get nombreVendedor => text().nullable()();
  TextColumn get nombreRuta => text().nullable()();
  TextColumn get fechaEjecucionRuta => text().nullable()();
  TextColumn get visFechaCreacion => text().nullable()();

  @override
  Set<Column> get primaryKey => {visId};
}
