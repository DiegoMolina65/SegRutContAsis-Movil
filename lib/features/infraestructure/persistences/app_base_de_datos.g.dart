// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_base_de_datos.dart';

// ignore_for_file: type=lint
class $TblUsuarioTable extends TblUsuario
    with TableInfo<$TblUsuarioTable, Usuario> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblUsuarioTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nombre_completoMeta = const VerificationMeta(
    'nombre_completo',
  );
  @override
  late final GeneratedColumn<String> nombre_completo = GeneratedColumn<String>(
    'nombre_completo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _correoMeta = const VerificationMeta('correo');
  @override
  late final GeneratedColumn<String> correo = GeneratedColumn<String>(
    'correo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telefonoMeta = const VerificationMeta(
    'telefono',
  );
  @override
  late final GeneratedColumn<String> telefono = GeneratedColumn<String>(
    'telefono',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nitMeta = const VerificationMeta('nit');
  @override
  late final GeneratedColumn<String> nit = GeneratedColumn<String>(
    'nit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ciMeta = const VerificationMeta('ci');
  @override
  late final GeneratedColumn<String> ci = GeneratedColumn<String>(
    'ci',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _aliasMeta = const VerificationMeta('alias');
  @override
  late final GeneratedColumn<String> alias = GeneratedColumn<String>(
    'alias',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contraseniaMeta = const VerificationMeta(
    'contrasenia',
  );
  @override
  late final GeneratedColumn<String> contrasenia = GeneratedColumn<String>(
    'contrasenia',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nombre_completo,
    correo,
    telefono,
    nit,
    ci,
    alias,
    contrasenia,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_usuario';
  @override
  VerificationContext validateIntegrity(
    Insertable<Usuario> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nombre_completo')) {
      context.handle(
        _nombre_completoMeta,
        nombre_completo.isAcceptableOrUnknown(
          data['nombre_completo']!,
          _nombre_completoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nombre_completoMeta);
    }
    if (data.containsKey('correo')) {
      context.handle(
        _correoMeta,
        correo.isAcceptableOrUnknown(data['correo']!, _correoMeta),
      );
    } else if (isInserting) {
      context.missing(_correoMeta);
    }
    if (data.containsKey('telefono')) {
      context.handle(
        _telefonoMeta,
        telefono.isAcceptableOrUnknown(data['telefono']!, _telefonoMeta),
      );
    } else if (isInserting) {
      context.missing(_telefonoMeta);
    }
    if (data.containsKey('nit')) {
      context.handle(
        _nitMeta,
        nit.isAcceptableOrUnknown(data['nit']!, _nitMeta),
      );
    } else if (isInserting) {
      context.missing(_nitMeta);
    }
    if (data.containsKey('ci')) {
      context.handle(_ciMeta, ci.isAcceptableOrUnknown(data['ci']!, _ciMeta));
    } else if (isInserting) {
      context.missing(_ciMeta);
    }
    if (data.containsKey('alias')) {
      context.handle(
        _aliasMeta,
        alias.isAcceptableOrUnknown(data['alias']!, _aliasMeta),
      );
    } else if (isInserting) {
      context.missing(_aliasMeta);
    }
    if (data.containsKey('contrasenia')) {
      context.handle(
        _contraseniaMeta,
        contrasenia.isAcceptableOrUnknown(
          data['contrasenia']!,
          _contraseniaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_contraseniaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Usuario map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Usuario.desdeBaseDeDatos(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nombre_completo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_completo'],
      )!,
      correo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}correo'],
      )!,
      telefono: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefono'],
      )!,
      nit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nit'],
      )!,
      ci: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ci'],
      )!,
      alias: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}alias'],
      )!,
      contrasenia: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contrasenia'],
      )!,
    );
  }

  @override
  $TblUsuarioTable createAlias(String alias) {
    return $TblUsuarioTable(attachedDatabase, alias);
  }
}

class TblUsuarioCompanion extends UpdateCompanion<Usuario> {
  final Value<int> id;
  final Value<String> nombre_completo;
  final Value<String> correo;
  final Value<String> telefono;
  final Value<String> nit;
  final Value<String> ci;
  final Value<String> alias;
  final Value<String> contrasenia;
  const TblUsuarioCompanion({
    this.id = const Value.absent(),
    this.nombre_completo = const Value.absent(),
    this.correo = const Value.absent(),
    this.telefono = const Value.absent(),
    this.nit = const Value.absent(),
    this.ci = const Value.absent(),
    this.alias = const Value.absent(),
    this.contrasenia = const Value.absent(),
  });
  TblUsuarioCompanion.insert({
    this.id = const Value.absent(),
    required String nombre_completo,
    required String correo,
    required String telefono,
    required String nit,
    required String ci,
    required String alias,
    required String contrasenia,
  }) : nombre_completo = Value(nombre_completo),
       correo = Value(correo),
       telefono = Value(telefono),
       nit = Value(nit),
       ci = Value(ci),
       alias = Value(alias),
       contrasenia = Value(contrasenia);
  static Insertable<Usuario> custom({
    Expression<int>? id,
    Expression<String>? nombre_completo,
    Expression<String>? correo,
    Expression<String>? telefono,
    Expression<String>? nit,
    Expression<String>? ci,
    Expression<String>? alias,
    Expression<String>? contrasenia,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre_completo != null) 'nombre_completo': nombre_completo,
      if (correo != null) 'correo': correo,
      if (telefono != null) 'telefono': telefono,
      if (nit != null) 'nit': nit,
      if (ci != null) 'ci': ci,
      if (alias != null) 'alias': alias,
      if (contrasenia != null) 'contrasenia': contrasenia,
    });
  }

  TblUsuarioCompanion copyWith({
    Value<int>? id,
    Value<String>? nombre_completo,
    Value<String>? correo,
    Value<String>? telefono,
    Value<String>? nit,
    Value<String>? ci,
    Value<String>? alias,
    Value<String>? contrasenia,
  }) {
    return TblUsuarioCompanion(
      id: id ?? this.id,
      nombre_completo: nombre_completo ?? this.nombre_completo,
      correo: correo ?? this.correo,
      telefono: telefono ?? this.telefono,
      nit: nit ?? this.nit,
      ci: ci ?? this.ci,
      alias: alias ?? this.alias,
      contrasenia: contrasenia ?? this.contrasenia,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nombre_completo.present) {
      map['nombre_completo'] = Variable<String>(nombre_completo.value);
    }
    if (correo.present) {
      map['correo'] = Variable<String>(correo.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (nit.present) {
      map['nit'] = Variable<String>(nit.value);
    }
    if (ci.present) {
      map['ci'] = Variable<String>(ci.value);
    }
    if (alias.present) {
      map['alias'] = Variable<String>(alias.value);
    }
    if (contrasenia.present) {
      map['contrasenia'] = Variable<String>(contrasenia.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblUsuarioCompanion(')
          ..write('id: $id, ')
          ..write('nombre_completo: $nombre_completo, ')
          ..write('correo: $correo, ')
          ..write('telefono: $telefono, ')
          ..write('nit: $nit, ')
          ..write('ci: $ci, ')
          ..write('alias: $alias, ')
          ..write('contrasenia: $contrasenia')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppBaseDeDatos extends GeneratedDatabase {
  _$AppBaseDeDatos(QueryExecutor e) : super(e);
  $AppBaseDeDatosManager get managers => $AppBaseDeDatosManager(this);
  late final $TblUsuarioTable tblUsuario = $TblUsuarioTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tblUsuario];
}

typedef $$TblUsuarioTableCreateCompanionBuilder =
    TblUsuarioCompanion Function({
      Value<int> id,
      required String nombre_completo,
      required String correo,
      required String telefono,
      required String nit,
      required String ci,
      required String alias,
      required String contrasenia,
    });
typedef $$TblUsuarioTableUpdateCompanionBuilder =
    TblUsuarioCompanion Function({
      Value<int> id,
      Value<String> nombre_completo,
      Value<String> correo,
      Value<String> telefono,
      Value<String> nit,
      Value<String> ci,
      Value<String> alias,
      Value<String> contrasenia,
    });

class $$TblUsuarioTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblUsuarioTable> {
  $$TblUsuarioTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre_completo => $composableBuilder(
    column: $table.nombre_completo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get correo => $composableBuilder(
    column: $table.correo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefono => $composableBuilder(
    column: $table.telefono,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nit => $composableBuilder(
    column: $table.nit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ci => $composableBuilder(
    column: $table.ci,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get alias => $composableBuilder(
    column: $table.alias,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contrasenia => $composableBuilder(
    column: $table.contrasenia,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblUsuarioTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblUsuarioTable> {
  $$TblUsuarioTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre_completo => $composableBuilder(
    column: $table.nombre_completo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get correo => $composableBuilder(
    column: $table.correo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefono => $composableBuilder(
    column: $table.telefono,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nit => $composableBuilder(
    column: $table.nit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ci => $composableBuilder(
    column: $table.ci,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get alias => $composableBuilder(
    column: $table.alias,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contrasenia => $composableBuilder(
    column: $table.contrasenia,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblUsuarioTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblUsuarioTable> {
  $$TblUsuarioTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre_completo => $composableBuilder(
    column: $table.nombre_completo,
    builder: (column) => column,
  );

  GeneratedColumn<String> get correo =>
      $composableBuilder(column: $table.correo, builder: (column) => column);

  GeneratedColumn<String> get telefono =>
      $composableBuilder(column: $table.telefono, builder: (column) => column);

  GeneratedColumn<String> get nit =>
      $composableBuilder(column: $table.nit, builder: (column) => column);

  GeneratedColumn<String> get ci =>
      $composableBuilder(column: $table.ci, builder: (column) => column);

  GeneratedColumn<String> get alias =>
      $composableBuilder(column: $table.alias, builder: (column) => column);

  GeneratedColumn<String> get contrasenia => $composableBuilder(
    column: $table.contrasenia,
    builder: (column) => column,
  );
}

class $$TblUsuarioTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblUsuarioTable,
          Usuario,
          $$TblUsuarioTableFilterComposer,
          $$TblUsuarioTableOrderingComposer,
          $$TblUsuarioTableAnnotationComposer,
          $$TblUsuarioTableCreateCompanionBuilder,
          $$TblUsuarioTableUpdateCompanionBuilder,
          (
            Usuario,
            BaseReferences<_$AppBaseDeDatos, $TblUsuarioTable, Usuario>,
          ),
          Usuario,
          PrefetchHooks Function()
        > {
  $$TblUsuarioTableTableManager(_$AppBaseDeDatos db, $TblUsuarioTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblUsuarioTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TblUsuarioTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TblUsuarioTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nombre_completo = const Value.absent(),
                Value<String> correo = const Value.absent(),
                Value<String> telefono = const Value.absent(),
                Value<String> nit = const Value.absent(),
                Value<String> ci = const Value.absent(),
                Value<String> alias = const Value.absent(),
                Value<String> contrasenia = const Value.absent(),
              }) => TblUsuarioCompanion(
                id: id,
                nombre_completo: nombre_completo,
                correo: correo,
                telefono: telefono,
                nit: nit,
                ci: ci,
                alias: alias,
                contrasenia: contrasenia,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nombre_completo,
                required String correo,
                required String telefono,
                required String nit,
                required String ci,
                required String alias,
                required String contrasenia,
              }) => TblUsuarioCompanion.insert(
                id: id,
                nombre_completo: nombre_completo,
                correo: correo,
                telefono: telefono,
                nit: nit,
                ci: ci,
                alias: alias,
                contrasenia: contrasenia,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblUsuarioTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblUsuarioTable,
      Usuario,
      $$TblUsuarioTableFilterComposer,
      $$TblUsuarioTableOrderingComposer,
      $$TblUsuarioTableAnnotationComposer,
      $$TblUsuarioTableCreateCompanionBuilder,
      $$TblUsuarioTableUpdateCompanionBuilder,
      (Usuario, BaseReferences<_$AppBaseDeDatos, $TblUsuarioTable, Usuario>),
      Usuario,
      PrefetchHooks Function()
    >;

class $AppBaseDeDatosManager {
  final _$AppBaseDeDatos _db;
  $AppBaseDeDatosManager(this._db);
  $$TblUsuarioTableTableManager get tblUsuario =>
      $$TblUsuarioTableTableManager(_db, _db.tblUsuario);
}
