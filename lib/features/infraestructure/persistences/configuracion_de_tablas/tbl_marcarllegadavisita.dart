import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

@UseRowClass(MarcarLlegadaVisita)
class TblMarcarllegadavisita extends Table {
  IntColumn get mlvId => integer()();
  IntColumn get visId => integer()();
  TextColumn get mlvHora => text()();
  RealColumn get mlvLatitud => real()();
  RealColumn get mlvLongitud => real()();
  BoolColumn get mlvEstadoDel => boolean()();
  TextColumn get mlvFechaCreacion => text()();
  TextColumn get nombreCliente => text().nullable()();
  TextColumn get nombreSucursalCliente => text().nullable()();
  RealColumn get sucursalLatitud => real().nullable()();
  RealColumn get sucursalLongitud => real().nullable()();
  TextColumn get nombreVendedor => text().nullable()();
  TextColumn get usuarioLogVendedor => text().nullable()();
  TextColumn get telefonoVendedor => text().nullable()();

  @override
  Set<Column> get primaryKey => {mlvId};
}
