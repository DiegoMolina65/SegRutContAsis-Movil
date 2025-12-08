import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

@UseRowClass(Asistencia)
class TblAsistencia extends Table {
  IntColumn get asiId => integer()();
  RealColumn get asiLatitud => real()();
  RealColumn get asiLongitud => real()();
  IntColumn get venId => integer()();
  DateTimeColumn get asiHoraEntrada => dateTime()();
  DateTimeColumn get asiHoraSalida => dateTime().nullable()();
  TextColumn get nombreVendedor => text().nullable()();

  @override
  Set<Column> get primaryKey => {asiId};
}
