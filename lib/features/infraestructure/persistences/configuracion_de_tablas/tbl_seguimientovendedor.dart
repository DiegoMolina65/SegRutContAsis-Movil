import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

@UseRowClass(SeguimientoVendedor)
class TblSeguimientovendedor extends Table {
  IntColumn get segId => integer()();
  IntColumn get venId => integer()();
  RealColumn get segLatitud => real()();
  RealColumn get segLongitud => real()();
  TextColumn get vendedorNombre => text().nullable()();
  DateTimeColumn get segFechaCreacion => dateTime()();

  @override
  Set<Column> get primaryKey => {segId};
}
