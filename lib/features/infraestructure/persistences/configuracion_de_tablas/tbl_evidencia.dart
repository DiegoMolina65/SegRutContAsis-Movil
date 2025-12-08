import 'package:drift/drift.dart';
import 'package:med_geo_asistencia/features/domain/entities/evidencia/evidencia.dart';

@UseRowClass(Evidencia, constructor: 'desdeBaseDeDatos')
class TblEvidencia extends Table {
  IntColumn get eviId => integer()();
  IntColumn get visitaId => integer()();
  TextColumn get eviTipo => text().nullable()();
  TextColumn get eviObservaciones => text().nullable()();
  TextColumn get eviArchivoUrl => text().nullable()();
  DateTimeColumn get eviFechaCreacion => dateTime()(); 

  @override
  Set<Column> get primaryKey => {eviId};
}