import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/ruta/ruta.dart';

@UseRowClass(Ruta)
class TblRuta extends Table {
  IntColumn get rutId => integer()();
  IntColumn get venId => integer()();
  IntColumn get supId => integer()();
  TextColumn get rutNombre => text()();
  TextColumn get rutComentario => text()();
  DateTimeColumn get rutFechaEjecucion => dateTime()();
  TextColumn get nombreVendedor => text().nullable()();
  TextColumn get nombreSupervisor => text().nullable()();

  @override
  Set<Column> get primaryKey => {rutId};
}
