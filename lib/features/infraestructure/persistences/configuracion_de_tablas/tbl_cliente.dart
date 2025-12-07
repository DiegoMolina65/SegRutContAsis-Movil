import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

@UseRowClass(Cliente)
class TblCliente extends Table {
  IntColumn get clId => integer()();
  TextColumn get clNombreCompleto => text()();
  TextColumn get clCarnetIdentidad => text()();
  TextColumn get clNitCliente => text()();
  TextColumn get clTipoCliente => text().nullable()();
  TextColumn get clTelefono => text()();

  @override
  Set<Column> get primaryKey => {clId};
}
