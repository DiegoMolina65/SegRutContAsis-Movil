import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:med_geo_asistencia/config/constantes/constantes.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import 'configuracion_de_tablas/tbl_referencias.dart';

part 'app_base_de_datos.g.dart';

@DriftDatabase(
  tables: [
    TblUsuario,
    TblAsistencia,
    TblCliente,
    TblRuta,
    TblVisita,
    TblMarcarllegadavisita,
    TblEvidencia,
    TblSeguimientovendedor,
  ],
)
class AppBaseDeDatos extends _$AppBaseDeDatos {
  /// Instancia única de la base de datos
  static AppBaseDeDatos? _instance;

  /// Constructor privado para evitar crear nuevas instancias
  AppBaseDeDatos._internal() : super(_openConnection());

  /// Metodo para obtener la instancia única
  factory AppBaseDeDatos() {
    return _instance ??= AppBaseDeDatos._internal();
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // No hacer nada en la migración
    },
  );

  Future<File> exportarBaseDeDatos(File file) async {
    // Make sure the directory of the target file exists
    await file.parent.create(recursive: true);

    // Override an existing backup, sqlite expects the target file to be empty
    if (file.existsSync()) {
      file.deleteSync();
    }

    await customStatement('VACUUM INTO ?', [file.path]);
    return file;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await obtenerDirectorioBaseDeDatos();
    final fileDB = File(
      path.join(dbFolder.path, ConfigBaseDeDatos.nombreBaseDeDatos),
    );
    if (!await fileDB.exists()) {
      // Crear la carpeta "database" si no existe
      await fileDB.parent.create(recursive: true);
      // Copiar base de datos desde el assets
      final data = await rootBundle.load(
        'assets/database/${ConfigBaseDeDatos.nombreBaseDeDatos}',
      );
      final bytes = data.buffer.asUint8List();
      await fileDB.writeAsBytes(bytes);
    }
    return NativeDatabase(fileDB);
  });
}

Future<File> obtenerDirectorioBaseDeDatos() async {
  final documentosAppFolder = await getApplicationDocumentsDirectory();
  // final file = File(path.join(dbFolder.path, 'db.movil.dual'));
  final dbFolder = File(path.join(documentosAppFolder.path, 'database'));
  if (!await dbFolder.exists()) {
    // Crear la carpeta "database" si no existe
    await dbFolder.create(recursive: true);
  }
  return dbFolder;
}
