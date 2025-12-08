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

class $TblAsistenciaTable extends TblAsistencia
    with TableInfo<$TblAsistenciaTable, Asistencia> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblAsistenciaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _asiIdMeta = const VerificationMeta('asiId');
  @override
  late final GeneratedColumn<int> asiId = GeneratedColumn<int>(
    'asi_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _asiLatitudMeta = const VerificationMeta(
    'asiLatitud',
  );
  @override
  late final GeneratedColumn<double> asiLatitud = GeneratedColumn<double>(
    'asi_latitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _asiLongitudMeta = const VerificationMeta(
    'asiLongitud',
  );
  @override
  late final GeneratedColumn<double> asiLongitud = GeneratedColumn<double>(
    'asi_longitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _venIdMeta = const VerificationMeta('venId');
  @override
  late final GeneratedColumn<int> venId = GeneratedColumn<int>(
    'ven_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _asiHoraEntradaMeta = const VerificationMeta(
    'asiHoraEntrada',
  );
  @override
  late final GeneratedColumn<DateTime> asiHoraEntrada =
      GeneratedColumn<DateTime>(
        'asi_hora_entrada',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _asiHoraSalidaMeta = const VerificationMeta(
    'asiHoraSalida',
  );
  @override
  late final GeneratedColumn<DateTime> asiHoraSalida =
      GeneratedColumn<DateTime>(
        'asi_hora_salida',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _nombreVendedorMeta = const VerificationMeta(
    'nombreVendedor',
  );
  @override
  late final GeneratedColumn<String> nombreVendedor = GeneratedColumn<String>(
    'nombre_vendedor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    asiId,
    asiLatitud,
    asiLongitud,
    venId,
    asiHoraEntrada,
    asiHoraSalida,
    nombreVendedor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_asistencia';
  @override
  VerificationContext validateIntegrity(
    Insertable<Asistencia> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('asi_id')) {
      context.handle(
        _asiIdMeta,
        asiId.isAcceptableOrUnknown(data['asi_id']!, _asiIdMeta),
      );
    }
    if (data.containsKey('asi_latitud')) {
      context.handle(
        _asiLatitudMeta,
        asiLatitud.isAcceptableOrUnknown(data['asi_latitud']!, _asiLatitudMeta),
      );
    } else if (isInserting) {
      context.missing(_asiLatitudMeta);
    }
    if (data.containsKey('asi_longitud')) {
      context.handle(
        _asiLongitudMeta,
        asiLongitud.isAcceptableOrUnknown(
          data['asi_longitud']!,
          _asiLongitudMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_asiLongitudMeta);
    }
    if (data.containsKey('ven_id')) {
      context.handle(
        _venIdMeta,
        venId.isAcceptableOrUnknown(data['ven_id']!, _venIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venIdMeta);
    }
    if (data.containsKey('asi_hora_entrada')) {
      context.handle(
        _asiHoraEntradaMeta,
        asiHoraEntrada.isAcceptableOrUnknown(
          data['asi_hora_entrada']!,
          _asiHoraEntradaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_asiHoraEntradaMeta);
    }
    if (data.containsKey('asi_hora_salida')) {
      context.handle(
        _asiHoraSalidaMeta,
        asiHoraSalida.isAcceptableOrUnknown(
          data['asi_hora_salida']!,
          _asiHoraSalidaMeta,
        ),
      );
    }
    if (data.containsKey('nombre_vendedor')) {
      context.handle(
        _nombreVendedorMeta,
        nombreVendedor.isAcceptableOrUnknown(
          data['nombre_vendedor']!,
          _nombreVendedorMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {asiId};
  @override
  Asistencia map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Asistencia.new(
      asiId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}asi_id'],
      )!,
      venId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ven_id'],
      )!,
      asiHoraEntrada: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}asi_hora_entrada'],
      )!,
      asiHoraSalida: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}asi_hora_salida'],
      ),
      asiLatitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}asi_latitud'],
      )!,
      asiLongitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}asi_longitud'],
      )!,
      nombreVendedor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_vendedor'],
      ),
    );
  }

  @override
  $TblAsistenciaTable createAlias(String alias) {
    return $TblAsistenciaTable(attachedDatabase, alias);
  }
}

class TblAsistenciaCompanion extends UpdateCompanion<Asistencia> {
  final Value<int> asiId;
  final Value<double> asiLatitud;
  final Value<double> asiLongitud;
  final Value<int> venId;
  final Value<DateTime> asiHoraEntrada;
  final Value<DateTime?> asiHoraSalida;
  final Value<String?> nombreVendedor;
  const TblAsistenciaCompanion({
    this.asiId = const Value.absent(),
    this.asiLatitud = const Value.absent(),
    this.asiLongitud = const Value.absent(),
    this.venId = const Value.absent(),
    this.asiHoraEntrada = const Value.absent(),
    this.asiHoraSalida = const Value.absent(),
    this.nombreVendedor = const Value.absent(),
  });
  TblAsistenciaCompanion.insert({
    this.asiId = const Value.absent(),
    required double asiLatitud,
    required double asiLongitud,
    required int venId,
    required DateTime asiHoraEntrada,
    this.asiHoraSalida = const Value.absent(),
    this.nombreVendedor = const Value.absent(),
  }) : asiLatitud = Value(asiLatitud),
       asiLongitud = Value(asiLongitud),
       venId = Value(venId),
       asiHoraEntrada = Value(asiHoraEntrada);
  static Insertable<Asistencia> custom({
    Expression<int>? asiId,
    Expression<double>? asiLatitud,
    Expression<double>? asiLongitud,
    Expression<int>? venId,
    Expression<DateTime>? asiHoraEntrada,
    Expression<DateTime>? asiHoraSalida,
    Expression<String>? nombreVendedor,
  }) {
    return RawValuesInsertable({
      if (asiId != null) 'asi_id': asiId,
      if (asiLatitud != null) 'asi_latitud': asiLatitud,
      if (asiLongitud != null) 'asi_longitud': asiLongitud,
      if (venId != null) 'ven_id': venId,
      if (asiHoraEntrada != null) 'asi_hora_entrada': asiHoraEntrada,
      if (asiHoraSalida != null) 'asi_hora_salida': asiHoraSalida,
      if (nombreVendedor != null) 'nombre_vendedor': nombreVendedor,
    });
  }

  TblAsistenciaCompanion copyWith({
    Value<int>? asiId,
    Value<double>? asiLatitud,
    Value<double>? asiLongitud,
    Value<int>? venId,
    Value<DateTime>? asiHoraEntrada,
    Value<DateTime?>? asiHoraSalida,
    Value<String?>? nombreVendedor,
  }) {
    return TblAsistenciaCompanion(
      asiId: asiId ?? this.asiId,
      asiLatitud: asiLatitud ?? this.asiLatitud,
      asiLongitud: asiLongitud ?? this.asiLongitud,
      venId: venId ?? this.venId,
      asiHoraEntrada: asiHoraEntrada ?? this.asiHoraEntrada,
      asiHoraSalida: asiHoraSalida ?? this.asiHoraSalida,
      nombreVendedor: nombreVendedor ?? this.nombreVendedor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (asiId.present) {
      map['asi_id'] = Variable<int>(asiId.value);
    }
    if (asiLatitud.present) {
      map['asi_latitud'] = Variable<double>(asiLatitud.value);
    }
    if (asiLongitud.present) {
      map['asi_longitud'] = Variable<double>(asiLongitud.value);
    }
    if (venId.present) {
      map['ven_id'] = Variable<int>(venId.value);
    }
    if (asiHoraEntrada.present) {
      map['asi_hora_entrada'] = Variable<DateTime>(asiHoraEntrada.value);
    }
    if (asiHoraSalida.present) {
      map['asi_hora_salida'] = Variable<DateTime>(asiHoraSalida.value);
    }
    if (nombreVendedor.present) {
      map['nombre_vendedor'] = Variable<String>(nombreVendedor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblAsistenciaCompanion(')
          ..write('asiId: $asiId, ')
          ..write('asiLatitud: $asiLatitud, ')
          ..write('asiLongitud: $asiLongitud, ')
          ..write('venId: $venId, ')
          ..write('asiHoraEntrada: $asiHoraEntrada, ')
          ..write('asiHoraSalida: $asiHoraSalida, ')
          ..write('nombreVendedor: $nombreVendedor')
          ..write(')'))
        .toString();
  }
}

class $TblClienteTable extends TblCliente
    with TableInfo<$TblClienteTable, Cliente> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblClienteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clIdMeta = const VerificationMeta('clId');
  @override
  late final GeneratedColumn<int> clId = GeneratedColumn<int>(
    'cl_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _clNombreCompletoMeta = const VerificationMeta(
    'clNombreCompleto',
  );
  @override
  late final GeneratedColumn<String> clNombreCompleto = GeneratedColumn<String>(
    'cl_nombre_completo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clCarnetIdentidadMeta = const VerificationMeta(
    'clCarnetIdentidad',
  );
  @override
  late final GeneratedColumn<String> clCarnetIdentidad =
      GeneratedColumn<String>(
        'cl_carnet_identidad',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _clNitClienteMeta = const VerificationMeta(
    'clNitCliente',
  );
  @override
  late final GeneratedColumn<String> clNitCliente = GeneratedColumn<String>(
    'cl_nit_cliente',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clTipoClienteMeta = const VerificationMeta(
    'clTipoCliente',
  );
  @override
  late final GeneratedColumn<String> clTipoCliente = GeneratedColumn<String>(
    'cl_tipo_cliente',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _clTelefonoMeta = const VerificationMeta(
    'clTelefono',
  );
  @override
  late final GeneratedColumn<String> clTelefono = GeneratedColumn<String>(
    'cl_telefono',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    clId,
    clNombreCompleto,
    clCarnetIdentidad,
    clNitCliente,
    clTipoCliente,
    clTelefono,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_cliente';
  @override
  VerificationContext validateIntegrity(
    Insertable<Cliente> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cl_id')) {
      context.handle(
        _clIdMeta,
        clId.isAcceptableOrUnknown(data['cl_id']!, _clIdMeta),
      );
    }
    if (data.containsKey('cl_nombre_completo')) {
      context.handle(
        _clNombreCompletoMeta,
        clNombreCompleto.isAcceptableOrUnknown(
          data['cl_nombre_completo']!,
          _clNombreCompletoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clNombreCompletoMeta);
    }
    if (data.containsKey('cl_carnet_identidad')) {
      context.handle(
        _clCarnetIdentidadMeta,
        clCarnetIdentidad.isAcceptableOrUnknown(
          data['cl_carnet_identidad']!,
          _clCarnetIdentidadMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clCarnetIdentidadMeta);
    }
    if (data.containsKey('cl_nit_cliente')) {
      context.handle(
        _clNitClienteMeta,
        clNitCliente.isAcceptableOrUnknown(
          data['cl_nit_cliente']!,
          _clNitClienteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clNitClienteMeta);
    }
    if (data.containsKey('cl_tipo_cliente')) {
      context.handle(
        _clTipoClienteMeta,
        clTipoCliente.isAcceptableOrUnknown(
          data['cl_tipo_cliente']!,
          _clTipoClienteMeta,
        ),
      );
    }
    if (data.containsKey('cl_telefono')) {
      context.handle(
        _clTelefonoMeta,
        clTelefono.isAcceptableOrUnknown(data['cl_telefono']!, _clTelefonoMeta),
      );
    } else if (isInserting) {
      context.missing(_clTelefonoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clId};
  @override
  Cliente map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cliente.new(
      clId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cl_id'],
      )!,
      clNombreCompleto: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cl_nombre_completo'],
      )!,
      clCarnetIdentidad: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cl_carnet_identidad'],
      )!,
      clNitCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cl_nit_cliente'],
      )!,
      clTipoCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cl_tipo_cliente'],
      ),
      clTelefono: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cl_telefono'],
      )!,
    );
  }

  @override
  $TblClienteTable createAlias(String alias) {
    return $TblClienteTable(attachedDatabase, alias);
  }
}

class TblClienteCompanion extends UpdateCompanion<Cliente> {
  final Value<int> clId;
  final Value<String> clNombreCompleto;
  final Value<String> clCarnetIdentidad;
  final Value<String> clNitCliente;
  final Value<String?> clTipoCliente;
  final Value<String> clTelefono;
  const TblClienteCompanion({
    this.clId = const Value.absent(),
    this.clNombreCompleto = const Value.absent(),
    this.clCarnetIdentidad = const Value.absent(),
    this.clNitCliente = const Value.absent(),
    this.clTipoCliente = const Value.absent(),
    this.clTelefono = const Value.absent(),
  });
  TblClienteCompanion.insert({
    this.clId = const Value.absent(),
    required String clNombreCompleto,
    required String clCarnetIdentidad,
    required String clNitCliente,
    this.clTipoCliente = const Value.absent(),
    required String clTelefono,
  }) : clNombreCompleto = Value(clNombreCompleto),
       clCarnetIdentidad = Value(clCarnetIdentidad),
       clNitCliente = Value(clNitCliente),
       clTelefono = Value(clTelefono);
  static Insertable<Cliente> custom({
    Expression<int>? clId,
    Expression<String>? clNombreCompleto,
    Expression<String>? clCarnetIdentidad,
    Expression<String>? clNitCliente,
    Expression<String>? clTipoCliente,
    Expression<String>? clTelefono,
  }) {
    return RawValuesInsertable({
      if (clId != null) 'cl_id': clId,
      if (clNombreCompleto != null) 'cl_nombre_completo': clNombreCompleto,
      if (clCarnetIdentidad != null) 'cl_carnet_identidad': clCarnetIdentidad,
      if (clNitCliente != null) 'cl_nit_cliente': clNitCliente,
      if (clTipoCliente != null) 'cl_tipo_cliente': clTipoCliente,
      if (clTelefono != null) 'cl_telefono': clTelefono,
    });
  }

  TblClienteCompanion copyWith({
    Value<int>? clId,
    Value<String>? clNombreCompleto,
    Value<String>? clCarnetIdentidad,
    Value<String>? clNitCliente,
    Value<String?>? clTipoCliente,
    Value<String>? clTelefono,
  }) {
    return TblClienteCompanion(
      clId: clId ?? this.clId,
      clNombreCompleto: clNombreCompleto ?? this.clNombreCompleto,
      clCarnetIdentidad: clCarnetIdentidad ?? this.clCarnetIdentidad,
      clNitCliente: clNitCliente ?? this.clNitCliente,
      clTipoCliente: clTipoCliente ?? this.clTipoCliente,
      clTelefono: clTelefono ?? this.clTelefono,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clId.present) {
      map['cl_id'] = Variable<int>(clId.value);
    }
    if (clNombreCompleto.present) {
      map['cl_nombre_completo'] = Variable<String>(clNombreCompleto.value);
    }
    if (clCarnetIdentidad.present) {
      map['cl_carnet_identidad'] = Variable<String>(clCarnetIdentidad.value);
    }
    if (clNitCliente.present) {
      map['cl_nit_cliente'] = Variable<String>(clNitCliente.value);
    }
    if (clTipoCliente.present) {
      map['cl_tipo_cliente'] = Variable<String>(clTipoCliente.value);
    }
    if (clTelefono.present) {
      map['cl_telefono'] = Variable<String>(clTelefono.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblClienteCompanion(')
          ..write('clId: $clId, ')
          ..write('clNombreCompleto: $clNombreCompleto, ')
          ..write('clCarnetIdentidad: $clCarnetIdentidad, ')
          ..write('clNitCliente: $clNitCliente, ')
          ..write('clTipoCliente: $clTipoCliente, ')
          ..write('clTelefono: $clTelefono')
          ..write(')'))
        .toString();
  }
}

class $TblRutaTable extends TblRuta with TableInfo<$TblRutaTable, Ruta> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblRutaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _rutIdMeta = const VerificationMeta('rutId');
  @override
  late final GeneratedColumn<int> rutId = GeneratedColumn<int>(
    'rut_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _venIdMeta = const VerificationMeta('venId');
  @override
  late final GeneratedColumn<int> venId = GeneratedColumn<int>(
    'ven_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _supIdMeta = const VerificationMeta('supId');
  @override
  late final GeneratedColumn<int> supId = GeneratedColumn<int>(
    'sup_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rutNombreMeta = const VerificationMeta(
    'rutNombre',
  );
  @override
  late final GeneratedColumn<String> rutNombre = GeneratedColumn<String>(
    'rut_nombre',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rutComentarioMeta = const VerificationMeta(
    'rutComentario',
  );
  @override
  late final GeneratedColumn<String> rutComentario = GeneratedColumn<String>(
    'rut_comentario',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rutFechaEjecucionMeta = const VerificationMeta(
    'rutFechaEjecucion',
  );
  @override
  late final GeneratedColumn<DateTime> rutFechaEjecucion =
      GeneratedColumn<DateTime>(
        'rut_fecha_ejecucion',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _nombreVendedorMeta = const VerificationMeta(
    'nombreVendedor',
  );
  @override
  late final GeneratedColumn<String> nombreVendedor = GeneratedColumn<String>(
    'nombre_vendedor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nombreSupervisorMeta = const VerificationMeta(
    'nombreSupervisor',
  );
  @override
  late final GeneratedColumn<String> nombreSupervisor = GeneratedColumn<String>(
    'nombre_supervisor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    rutId,
    venId,
    supId,
    rutNombre,
    rutComentario,
    rutFechaEjecucion,
    nombreVendedor,
    nombreSupervisor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_ruta';
  @override
  VerificationContext validateIntegrity(
    Insertable<Ruta> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('rut_id')) {
      context.handle(
        _rutIdMeta,
        rutId.isAcceptableOrUnknown(data['rut_id']!, _rutIdMeta),
      );
    }
    if (data.containsKey('ven_id')) {
      context.handle(
        _venIdMeta,
        venId.isAcceptableOrUnknown(data['ven_id']!, _venIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venIdMeta);
    }
    if (data.containsKey('sup_id')) {
      context.handle(
        _supIdMeta,
        supId.isAcceptableOrUnknown(data['sup_id']!, _supIdMeta),
      );
    } else if (isInserting) {
      context.missing(_supIdMeta);
    }
    if (data.containsKey('rut_nombre')) {
      context.handle(
        _rutNombreMeta,
        rutNombre.isAcceptableOrUnknown(data['rut_nombre']!, _rutNombreMeta),
      );
    } else if (isInserting) {
      context.missing(_rutNombreMeta);
    }
    if (data.containsKey('rut_comentario')) {
      context.handle(
        _rutComentarioMeta,
        rutComentario.isAcceptableOrUnknown(
          data['rut_comentario']!,
          _rutComentarioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rutComentarioMeta);
    }
    if (data.containsKey('rut_fecha_ejecucion')) {
      context.handle(
        _rutFechaEjecucionMeta,
        rutFechaEjecucion.isAcceptableOrUnknown(
          data['rut_fecha_ejecucion']!,
          _rutFechaEjecucionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rutFechaEjecucionMeta);
    }
    if (data.containsKey('nombre_vendedor')) {
      context.handle(
        _nombreVendedorMeta,
        nombreVendedor.isAcceptableOrUnknown(
          data['nombre_vendedor']!,
          _nombreVendedorMeta,
        ),
      );
    }
    if (data.containsKey('nombre_supervisor')) {
      context.handle(
        _nombreSupervisorMeta,
        nombreSupervisor.isAcceptableOrUnknown(
          data['nombre_supervisor']!,
          _nombreSupervisorMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {rutId};
  @override
  Ruta map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ruta.new(
      rutId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rut_id'],
      )!,
      venId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ven_id'],
      )!,
      supId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sup_id'],
      )!,
      rutNombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rut_nombre'],
      )!,
      rutComentario: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rut_comentario'],
      )!,
      rutFechaEjecucion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}rut_fecha_ejecucion'],
      )!,
      nombreVendedor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_vendedor'],
      ),
      nombreSupervisor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_supervisor'],
      ),
    );
  }

  @override
  $TblRutaTable createAlias(String alias) {
    return $TblRutaTable(attachedDatabase, alias);
  }
}

class TblRutaCompanion extends UpdateCompanion<Ruta> {
  final Value<int> rutId;
  final Value<int> venId;
  final Value<int> supId;
  final Value<String> rutNombre;
  final Value<String> rutComentario;
  final Value<DateTime> rutFechaEjecucion;
  final Value<String?> nombreVendedor;
  final Value<String?> nombreSupervisor;
  const TblRutaCompanion({
    this.rutId = const Value.absent(),
    this.venId = const Value.absent(),
    this.supId = const Value.absent(),
    this.rutNombre = const Value.absent(),
    this.rutComentario = const Value.absent(),
    this.rutFechaEjecucion = const Value.absent(),
    this.nombreVendedor = const Value.absent(),
    this.nombreSupervisor = const Value.absent(),
  });
  TblRutaCompanion.insert({
    this.rutId = const Value.absent(),
    required int venId,
    required int supId,
    required String rutNombre,
    required String rutComentario,
    required DateTime rutFechaEjecucion,
    this.nombreVendedor = const Value.absent(),
    this.nombreSupervisor = const Value.absent(),
  }) : venId = Value(venId),
       supId = Value(supId),
       rutNombre = Value(rutNombre),
       rutComentario = Value(rutComentario),
       rutFechaEjecucion = Value(rutFechaEjecucion);
  static Insertable<Ruta> custom({
    Expression<int>? rutId,
    Expression<int>? venId,
    Expression<int>? supId,
    Expression<String>? rutNombre,
    Expression<String>? rutComentario,
    Expression<DateTime>? rutFechaEjecucion,
    Expression<String>? nombreVendedor,
    Expression<String>? nombreSupervisor,
  }) {
    return RawValuesInsertable({
      if (rutId != null) 'rut_id': rutId,
      if (venId != null) 'ven_id': venId,
      if (supId != null) 'sup_id': supId,
      if (rutNombre != null) 'rut_nombre': rutNombre,
      if (rutComentario != null) 'rut_comentario': rutComentario,
      if (rutFechaEjecucion != null) 'rut_fecha_ejecucion': rutFechaEjecucion,
      if (nombreVendedor != null) 'nombre_vendedor': nombreVendedor,
      if (nombreSupervisor != null) 'nombre_supervisor': nombreSupervisor,
    });
  }

  TblRutaCompanion copyWith({
    Value<int>? rutId,
    Value<int>? venId,
    Value<int>? supId,
    Value<String>? rutNombre,
    Value<String>? rutComentario,
    Value<DateTime>? rutFechaEjecucion,
    Value<String?>? nombreVendedor,
    Value<String?>? nombreSupervisor,
  }) {
    return TblRutaCompanion(
      rutId: rutId ?? this.rutId,
      venId: venId ?? this.venId,
      supId: supId ?? this.supId,
      rutNombre: rutNombre ?? this.rutNombre,
      rutComentario: rutComentario ?? this.rutComentario,
      rutFechaEjecucion: rutFechaEjecucion ?? this.rutFechaEjecucion,
      nombreVendedor: nombreVendedor ?? this.nombreVendedor,
      nombreSupervisor: nombreSupervisor ?? this.nombreSupervisor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (rutId.present) {
      map['rut_id'] = Variable<int>(rutId.value);
    }
    if (venId.present) {
      map['ven_id'] = Variable<int>(venId.value);
    }
    if (supId.present) {
      map['sup_id'] = Variable<int>(supId.value);
    }
    if (rutNombre.present) {
      map['rut_nombre'] = Variable<String>(rutNombre.value);
    }
    if (rutComentario.present) {
      map['rut_comentario'] = Variable<String>(rutComentario.value);
    }
    if (rutFechaEjecucion.present) {
      map['rut_fecha_ejecucion'] = Variable<DateTime>(rutFechaEjecucion.value);
    }
    if (nombreVendedor.present) {
      map['nombre_vendedor'] = Variable<String>(nombreVendedor.value);
    }
    if (nombreSupervisor.present) {
      map['nombre_supervisor'] = Variable<String>(nombreSupervisor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblRutaCompanion(')
          ..write('rutId: $rutId, ')
          ..write('venId: $venId, ')
          ..write('supId: $supId, ')
          ..write('rutNombre: $rutNombre, ')
          ..write('rutComentario: $rutComentario, ')
          ..write('rutFechaEjecucion: $rutFechaEjecucion, ')
          ..write('nombreVendedor: $nombreVendedor, ')
          ..write('nombreSupervisor: $nombreSupervisor')
          ..write(')'))
        .toString();
  }
}

class $TblVisitaTable extends TblVisita
    with TableInfo<$TblVisitaTable, Visita> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblVisitaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _visIdMeta = const VerificationMeta('visId');
  @override
  late final GeneratedColumn<int> visId = GeneratedColumn<int>(
    'vis_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rutIdMeta = const VerificationMeta('rutId');
  @override
  late final GeneratedColumn<int> rutId = GeneratedColumn<int>(
    'rut_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dirClIdMeta = const VerificationMeta(
    'dirClId',
  );
  @override
  late final GeneratedColumn<int> dirClId = GeneratedColumn<int>(
    'dir_cl_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _visComentarioMeta = const VerificationMeta(
    'visComentario',
  );
  @override
  late final GeneratedColumn<String> visComentario = GeneratedColumn<String>(
    'vis_comentario',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreClienteMeta = const VerificationMeta(
    'nombreCliente',
  );
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
    'nombre_cliente',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreSucursalClienteMeta =
      const VerificationMeta('nombreSucursalCliente');
  @override
  late final GeneratedColumn<String> nombreSucursalCliente =
      GeneratedColumn<String>(
        'nombre_sucursal_cliente',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _visEstadoDelMeta = const VerificationMeta(
    'visEstadoDel',
  );
  @override
  late final GeneratedColumn<bool> visEstadoDel = GeneratedColumn<bool>(
    'vis_estado_del',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("vis_estado_del" IN (0, 1))',
    ),
  );
  static const VerificationMeta _sucursalLatitudMeta = const VerificationMeta(
    'sucursalLatitud',
  );
  @override
  late final GeneratedColumn<double> sucursalLatitud = GeneratedColumn<double>(
    'sucursal_latitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sucursalLongitudMeta = const VerificationMeta(
    'sucursalLongitud',
  );
  @override
  late final GeneratedColumn<double> sucursalLongitud = GeneratedColumn<double>(
    'sucursal_longitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreZonaMeta = const VerificationMeta(
    'nombreZona',
  );
  @override
  late final GeneratedColumn<String> nombreZona = GeneratedColumn<String>(
    'nombre_zona',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _direccionMeta = const VerificationMeta(
    'direccion',
  );
  @override
  late final GeneratedColumn<String> direccion = GeneratedColumn<String>(
    'direccion',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreVendedorMeta = const VerificationMeta(
    'nombreVendedor',
  );
  @override
  late final GeneratedColumn<String> nombreVendedor = GeneratedColumn<String>(
    'nombre_vendedor',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreRutaMeta = const VerificationMeta(
    'nombreRuta',
  );
  @override
  late final GeneratedColumn<String> nombreRuta = GeneratedColumn<String>(
    'nombre_ruta',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaEjecucionRutaMeta =
      const VerificationMeta('fechaEjecucionRuta');
  @override
  late final GeneratedColumn<DateTime> fechaEjecucionRuta =
      GeneratedColumn<DateTime>(
        'fecha_ejecucion_ruta',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _visFechaCreacionMeta = const VerificationMeta(
    'visFechaCreacion',
  );
  @override
  late final GeneratedColumn<DateTime> visFechaCreacion =
      GeneratedColumn<DateTime>(
        'vis_fecha_creacion',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    visId,
    rutId,
    dirClId,
    visComentario,
    nombreCliente,
    nombreSucursalCliente,
    visEstadoDel,
    sucursalLatitud,
    sucursalLongitud,
    nombreZona,
    direccion,
    nombreVendedor,
    nombreRuta,
    fechaEjecucionRuta,
    visFechaCreacion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_visita';
  @override
  VerificationContext validateIntegrity(
    Insertable<Visita> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('vis_id')) {
      context.handle(
        _visIdMeta,
        visId.isAcceptableOrUnknown(data['vis_id']!, _visIdMeta),
      );
    }
    if (data.containsKey('rut_id')) {
      context.handle(
        _rutIdMeta,
        rutId.isAcceptableOrUnknown(data['rut_id']!, _rutIdMeta),
      );
    } else if (isInserting) {
      context.missing(_rutIdMeta);
    }
    if (data.containsKey('dir_cl_id')) {
      context.handle(
        _dirClIdMeta,
        dirClId.isAcceptableOrUnknown(data['dir_cl_id']!, _dirClIdMeta),
      );
    } else if (isInserting) {
      context.missing(_dirClIdMeta);
    }
    if (data.containsKey('vis_comentario')) {
      context.handle(
        _visComentarioMeta,
        visComentario.isAcceptableOrUnknown(
          data['vis_comentario']!,
          _visComentarioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_visComentarioMeta);
    }
    if (data.containsKey('nombre_cliente')) {
      context.handle(
        _nombreClienteMeta,
        nombreCliente.isAcceptableOrUnknown(
          data['nombre_cliente']!,
          _nombreClienteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nombreClienteMeta);
    }
    if (data.containsKey('nombre_sucursal_cliente')) {
      context.handle(
        _nombreSucursalClienteMeta,
        nombreSucursalCliente.isAcceptableOrUnknown(
          data['nombre_sucursal_cliente']!,
          _nombreSucursalClienteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nombreSucursalClienteMeta);
    }
    if (data.containsKey('vis_estado_del')) {
      context.handle(
        _visEstadoDelMeta,
        visEstadoDel.isAcceptableOrUnknown(
          data['vis_estado_del']!,
          _visEstadoDelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_visEstadoDelMeta);
    }
    if (data.containsKey('sucursal_latitud')) {
      context.handle(
        _sucursalLatitudMeta,
        sucursalLatitud.isAcceptableOrUnknown(
          data['sucursal_latitud']!,
          _sucursalLatitudMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sucursalLatitudMeta);
    }
    if (data.containsKey('sucursal_longitud')) {
      context.handle(
        _sucursalLongitudMeta,
        sucursalLongitud.isAcceptableOrUnknown(
          data['sucursal_longitud']!,
          _sucursalLongitudMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sucursalLongitudMeta);
    }
    if (data.containsKey('nombre_zona')) {
      context.handle(
        _nombreZonaMeta,
        nombreZona.isAcceptableOrUnknown(data['nombre_zona']!, _nombreZonaMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreZonaMeta);
    }
    if (data.containsKey('direccion')) {
      context.handle(
        _direccionMeta,
        direccion.isAcceptableOrUnknown(data['direccion']!, _direccionMeta),
      );
    } else if (isInserting) {
      context.missing(_direccionMeta);
    }
    if (data.containsKey('nombre_vendedor')) {
      context.handle(
        _nombreVendedorMeta,
        nombreVendedor.isAcceptableOrUnknown(
          data['nombre_vendedor']!,
          _nombreVendedorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nombreVendedorMeta);
    }
    if (data.containsKey('nombre_ruta')) {
      context.handle(
        _nombreRutaMeta,
        nombreRuta.isAcceptableOrUnknown(data['nombre_ruta']!, _nombreRutaMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreRutaMeta);
    }
    if (data.containsKey('fecha_ejecucion_ruta')) {
      context.handle(
        _fechaEjecucionRutaMeta,
        fechaEjecucionRuta.isAcceptableOrUnknown(
          data['fecha_ejecucion_ruta']!,
          _fechaEjecucionRutaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fechaEjecucionRutaMeta);
    }
    if (data.containsKey('vis_fecha_creacion')) {
      context.handle(
        _visFechaCreacionMeta,
        visFechaCreacion.isAcceptableOrUnknown(
          data['vis_fecha_creacion']!,
          _visFechaCreacionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_visFechaCreacionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {visId};
  @override
  Visita map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Visita.new(
      visId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vis_id'],
      )!,
      rutId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rut_id'],
      )!,
      dirClId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}dir_cl_id'],
      )!,
      visFechaCreacion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}vis_fecha_creacion'],
      )!,
      visEstadoDel: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}vis_estado_del'],
      )!,
      visComentario: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vis_comentario'],
      )!,
      nombreCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_cliente'],
      )!,
      nombreSucursalCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_sucursal_cliente'],
      )!,
      sucursalLatitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sucursal_latitud'],
      )!,
      sucursalLongitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sucursal_longitud'],
      )!,
      nombreZona: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_zona'],
      )!,
      direccion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}direccion'],
      )!,
      nombreVendedor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_vendedor'],
      )!,
      nombreRuta: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_ruta'],
      )!,
      fechaEjecucionRuta: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_ejecucion_ruta'],
      )!,
    );
  }

  @override
  $TblVisitaTable createAlias(String alias) {
    return $TblVisitaTable(attachedDatabase, alias);
  }
}

class TblVisitaCompanion extends UpdateCompanion<Visita> {
  final Value<int> visId;
  final Value<int> rutId;
  final Value<int> dirClId;
  final Value<String> visComentario;
  final Value<String> nombreCliente;
  final Value<String> nombreSucursalCliente;
  final Value<bool> visEstadoDel;
  final Value<double> sucursalLatitud;
  final Value<double> sucursalLongitud;
  final Value<String> nombreZona;
  final Value<String> direccion;
  final Value<String> nombreVendedor;
  final Value<String> nombreRuta;
  final Value<DateTime> fechaEjecucionRuta;
  final Value<DateTime> visFechaCreacion;
  const TblVisitaCompanion({
    this.visId = const Value.absent(),
    this.rutId = const Value.absent(),
    this.dirClId = const Value.absent(),
    this.visComentario = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.nombreSucursalCliente = const Value.absent(),
    this.visEstadoDel = const Value.absent(),
    this.sucursalLatitud = const Value.absent(),
    this.sucursalLongitud = const Value.absent(),
    this.nombreZona = const Value.absent(),
    this.direccion = const Value.absent(),
    this.nombreVendedor = const Value.absent(),
    this.nombreRuta = const Value.absent(),
    this.fechaEjecucionRuta = const Value.absent(),
    this.visFechaCreacion = const Value.absent(),
  });
  TblVisitaCompanion.insert({
    this.visId = const Value.absent(),
    required int rutId,
    required int dirClId,
    required String visComentario,
    required String nombreCliente,
    required String nombreSucursalCliente,
    required bool visEstadoDel,
    required double sucursalLatitud,
    required double sucursalLongitud,
    required String nombreZona,
    required String direccion,
    required String nombreVendedor,
    required String nombreRuta,
    required DateTime fechaEjecucionRuta,
    required DateTime visFechaCreacion,
  }) : rutId = Value(rutId),
       dirClId = Value(dirClId),
       visComentario = Value(visComentario),
       nombreCliente = Value(nombreCliente),
       nombreSucursalCliente = Value(nombreSucursalCliente),
       visEstadoDel = Value(visEstadoDel),
       sucursalLatitud = Value(sucursalLatitud),
       sucursalLongitud = Value(sucursalLongitud),
       nombreZona = Value(nombreZona),
       direccion = Value(direccion),
       nombreVendedor = Value(nombreVendedor),
       nombreRuta = Value(nombreRuta),
       fechaEjecucionRuta = Value(fechaEjecucionRuta),
       visFechaCreacion = Value(visFechaCreacion);
  static Insertable<Visita> custom({
    Expression<int>? visId,
    Expression<int>? rutId,
    Expression<int>? dirClId,
    Expression<String>? visComentario,
    Expression<String>? nombreCliente,
    Expression<String>? nombreSucursalCliente,
    Expression<bool>? visEstadoDel,
    Expression<double>? sucursalLatitud,
    Expression<double>? sucursalLongitud,
    Expression<String>? nombreZona,
    Expression<String>? direccion,
    Expression<String>? nombreVendedor,
    Expression<String>? nombreRuta,
    Expression<DateTime>? fechaEjecucionRuta,
    Expression<DateTime>? visFechaCreacion,
  }) {
    return RawValuesInsertable({
      if (visId != null) 'vis_id': visId,
      if (rutId != null) 'rut_id': rutId,
      if (dirClId != null) 'dir_cl_id': dirClId,
      if (visComentario != null) 'vis_comentario': visComentario,
      if (nombreCliente != null) 'nombre_cliente': nombreCliente,
      if (nombreSucursalCliente != null)
        'nombre_sucursal_cliente': nombreSucursalCliente,
      if (visEstadoDel != null) 'vis_estado_del': visEstadoDel,
      if (sucursalLatitud != null) 'sucursal_latitud': sucursalLatitud,
      if (sucursalLongitud != null) 'sucursal_longitud': sucursalLongitud,
      if (nombreZona != null) 'nombre_zona': nombreZona,
      if (direccion != null) 'direccion': direccion,
      if (nombreVendedor != null) 'nombre_vendedor': nombreVendedor,
      if (nombreRuta != null) 'nombre_ruta': nombreRuta,
      if (fechaEjecucionRuta != null)
        'fecha_ejecucion_ruta': fechaEjecucionRuta,
      if (visFechaCreacion != null) 'vis_fecha_creacion': visFechaCreacion,
    });
  }

  TblVisitaCompanion copyWith({
    Value<int>? visId,
    Value<int>? rutId,
    Value<int>? dirClId,
    Value<String>? visComentario,
    Value<String>? nombreCliente,
    Value<String>? nombreSucursalCliente,
    Value<bool>? visEstadoDel,
    Value<double>? sucursalLatitud,
    Value<double>? sucursalLongitud,
    Value<String>? nombreZona,
    Value<String>? direccion,
    Value<String>? nombreVendedor,
    Value<String>? nombreRuta,
    Value<DateTime>? fechaEjecucionRuta,
    Value<DateTime>? visFechaCreacion,
  }) {
    return TblVisitaCompanion(
      visId: visId ?? this.visId,
      rutId: rutId ?? this.rutId,
      dirClId: dirClId ?? this.dirClId,
      visComentario: visComentario ?? this.visComentario,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      nombreSucursalCliente:
          nombreSucursalCliente ?? this.nombreSucursalCliente,
      visEstadoDel: visEstadoDel ?? this.visEstadoDel,
      sucursalLatitud: sucursalLatitud ?? this.sucursalLatitud,
      sucursalLongitud: sucursalLongitud ?? this.sucursalLongitud,
      nombreZona: nombreZona ?? this.nombreZona,
      direccion: direccion ?? this.direccion,
      nombreVendedor: nombreVendedor ?? this.nombreVendedor,
      nombreRuta: nombreRuta ?? this.nombreRuta,
      fechaEjecucionRuta: fechaEjecucionRuta ?? this.fechaEjecucionRuta,
      visFechaCreacion: visFechaCreacion ?? this.visFechaCreacion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (visId.present) {
      map['vis_id'] = Variable<int>(visId.value);
    }
    if (rutId.present) {
      map['rut_id'] = Variable<int>(rutId.value);
    }
    if (dirClId.present) {
      map['dir_cl_id'] = Variable<int>(dirClId.value);
    }
    if (visComentario.present) {
      map['vis_comentario'] = Variable<String>(visComentario.value);
    }
    if (nombreCliente.present) {
      map['nombre_cliente'] = Variable<String>(nombreCliente.value);
    }
    if (nombreSucursalCliente.present) {
      map['nombre_sucursal_cliente'] = Variable<String>(
        nombreSucursalCliente.value,
      );
    }
    if (visEstadoDel.present) {
      map['vis_estado_del'] = Variable<bool>(visEstadoDel.value);
    }
    if (sucursalLatitud.present) {
      map['sucursal_latitud'] = Variable<double>(sucursalLatitud.value);
    }
    if (sucursalLongitud.present) {
      map['sucursal_longitud'] = Variable<double>(sucursalLongitud.value);
    }
    if (nombreZona.present) {
      map['nombre_zona'] = Variable<String>(nombreZona.value);
    }
    if (direccion.present) {
      map['direccion'] = Variable<String>(direccion.value);
    }
    if (nombreVendedor.present) {
      map['nombre_vendedor'] = Variable<String>(nombreVendedor.value);
    }
    if (nombreRuta.present) {
      map['nombre_ruta'] = Variable<String>(nombreRuta.value);
    }
    if (fechaEjecucionRuta.present) {
      map['fecha_ejecucion_ruta'] = Variable<DateTime>(
        fechaEjecucionRuta.value,
      );
    }
    if (visFechaCreacion.present) {
      map['vis_fecha_creacion'] = Variable<DateTime>(visFechaCreacion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblVisitaCompanion(')
          ..write('visId: $visId, ')
          ..write('rutId: $rutId, ')
          ..write('dirClId: $dirClId, ')
          ..write('visComentario: $visComentario, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('nombreSucursalCliente: $nombreSucursalCliente, ')
          ..write('visEstadoDel: $visEstadoDel, ')
          ..write('sucursalLatitud: $sucursalLatitud, ')
          ..write('sucursalLongitud: $sucursalLongitud, ')
          ..write('nombreZona: $nombreZona, ')
          ..write('direccion: $direccion, ')
          ..write('nombreVendedor: $nombreVendedor, ')
          ..write('nombreRuta: $nombreRuta, ')
          ..write('fechaEjecucionRuta: $fechaEjecucionRuta, ')
          ..write('visFechaCreacion: $visFechaCreacion')
          ..write(')'))
        .toString();
  }
}

class $TblMarcarllegadavisitaTable extends TblMarcarllegadavisita
    with TableInfo<$TblMarcarllegadavisitaTable, MarcarLlegadaVisita> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblMarcarllegadavisitaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mlvIdMeta = const VerificationMeta('mlvId');
  @override
  late final GeneratedColumn<int> mlvId = GeneratedColumn<int>(
    'mlv_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _visIdMeta = const VerificationMeta('visId');
  @override
  late final GeneratedColumn<int> visId = GeneratedColumn<int>(
    'vis_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mlvHoraMeta = const VerificationMeta(
    'mlvHora',
  );
  @override
  late final GeneratedColumn<String> mlvHora = GeneratedColumn<String>(
    'mlv_hora',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mlvLatitudMeta = const VerificationMeta(
    'mlvLatitud',
  );
  @override
  late final GeneratedColumn<double> mlvLatitud = GeneratedColumn<double>(
    'mlv_latitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mlvLongitudMeta = const VerificationMeta(
    'mlvLongitud',
  );
  @override
  late final GeneratedColumn<double> mlvLongitud = GeneratedColumn<double>(
    'mlv_longitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mlvEstadoDelMeta = const VerificationMeta(
    'mlvEstadoDel',
  );
  @override
  late final GeneratedColumn<bool> mlvEstadoDel = GeneratedColumn<bool>(
    'mlv_estado_del',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("mlv_estado_del" IN (0, 1))',
    ),
  );
  static const VerificationMeta _mlvFechaCreacionMeta = const VerificationMeta(
    'mlvFechaCreacion',
  );
  @override
  late final GeneratedColumn<String> mlvFechaCreacion = GeneratedColumn<String>(
    'mlv_fecha_creacion',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreClienteMeta = const VerificationMeta(
    'nombreCliente',
  );
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
    'nombre_cliente',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nombreSucursalClienteMeta =
      const VerificationMeta('nombreSucursalCliente');
  @override
  late final GeneratedColumn<String> nombreSucursalCliente =
      GeneratedColumn<String>(
        'nombre_sucursal_cliente',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _sucursalLatitudMeta = const VerificationMeta(
    'sucursalLatitud',
  );
  @override
  late final GeneratedColumn<double> sucursalLatitud = GeneratedColumn<double>(
    'sucursal_latitud',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sucursalLongitudMeta = const VerificationMeta(
    'sucursalLongitud',
  );
  @override
  late final GeneratedColumn<double> sucursalLongitud = GeneratedColumn<double>(
    'sucursal_longitud',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nombreVendedorMeta = const VerificationMeta(
    'nombreVendedor',
  );
  @override
  late final GeneratedColumn<String> nombreVendedor = GeneratedColumn<String>(
    'nombre_vendedor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _usuarioLogVendedorMeta =
      const VerificationMeta('usuarioLogVendedor');
  @override
  late final GeneratedColumn<String> usuarioLogVendedor =
      GeneratedColumn<String>(
        'usuario_log_vendedor',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _telefonoVendedorMeta = const VerificationMeta(
    'telefonoVendedor',
  );
  @override
  late final GeneratedColumn<String> telefonoVendedor = GeneratedColumn<String>(
    'telefono_vendedor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    mlvId,
    visId,
    mlvHora,
    mlvLatitud,
    mlvLongitud,
    mlvEstadoDel,
    mlvFechaCreacion,
    nombreCliente,
    nombreSucursalCliente,
    sucursalLatitud,
    sucursalLongitud,
    nombreVendedor,
    usuarioLogVendedor,
    telefonoVendedor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_marcarllegadavisita';
  @override
  VerificationContext validateIntegrity(
    Insertable<MarcarLlegadaVisita> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mlv_id')) {
      context.handle(
        _mlvIdMeta,
        mlvId.isAcceptableOrUnknown(data['mlv_id']!, _mlvIdMeta),
      );
    }
    if (data.containsKey('vis_id')) {
      context.handle(
        _visIdMeta,
        visId.isAcceptableOrUnknown(data['vis_id']!, _visIdMeta),
      );
    } else if (isInserting) {
      context.missing(_visIdMeta);
    }
    if (data.containsKey('mlv_hora')) {
      context.handle(
        _mlvHoraMeta,
        mlvHora.isAcceptableOrUnknown(data['mlv_hora']!, _mlvHoraMeta),
      );
    } else if (isInserting) {
      context.missing(_mlvHoraMeta);
    }
    if (data.containsKey('mlv_latitud')) {
      context.handle(
        _mlvLatitudMeta,
        mlvLatitud.isAcceptableOrUnknown(data['mlv_latitud']!, _mlvLatitudMeta),
      );
    } else if (isInserting) {
      context.missing(_mlvLatitudMeta);
    }
    if (data.containsKey('mlv_longitud')) {
      context.handle(
        _mlvLongitudMeta,
        mlvLongitud.isAcceptableOrUnknown(
          data['mlv_longitud']!,
          _mlvLongitudMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_mlvLongitudMeta);
    }
    if (data.containsKey('mlv_estado_del')) {
      context.handle(
        _mlvEstadoDelMeta,
        mlvEstadoDel.isAcceptableOrUnknown(
          data['mlv_estado_del']!,
          _mlvEstadoDelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_mlvEstadoDelMeta);
    }
    if (data.containsKey('mlv_fecha_creacion')) {
      context.handle(
        _mlvFechaCreacionMeta,
        mlvFechaCreacion.isAcceptableOrUnknown(
          data['mlv_fecha_creacion']!,
          _mlvFechaCreacionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_mlvFechaCreacionMeta);
    }
    if (data.containsKey('nombre_cliente')) {
      context.handle(
        _nombreClienteMeta,
        nombreCliente.isAcceptableOrUnknown(
          data['nombre_cliente']!,
          _nombreClienteMeta,
        ),
      );
    }
    if (data.containsKey('nombre_sucursal_cliente')) {
      context.handle(
        _nombreSucursalClienteMeta,
        nombreSucursalCliente.isAcceptableOrUnknown(
          data['nombre_sucursal_cliente']!,
          _nombreSucursalClienteMeta,
        ),
      );
    }
    if (data.containsKey('sucursal_latitud')) {
      context.handle(
        _sucursalLatitudMeta,
        sucursalLatitud.isAcceptableOrUnknown(
          data['sucursal_latitud']!,
          _sucursalLatitudMeta,
        ),
      );
    }
    if (data.containsKey('sucursal_longitud')) {
      context.handle(
        _sucursalLongitudMeta,
        sucursalLongitud.isAcceptableOrUnknown(
          data['sucursal_longitud']!,
          _sucursalLongitudMeta,
        ),
      );
    }
    if (data.containsKey('nombre_vendedor')) {
      context.handle(
        _nombreVendedorMeta,
        nombreVendedor.isAcceptableOrUnknown(
          data['nombre_vendedor']!,
          _nombreVendedorMeta,
        ),
      );
    }
    if (data.containsKey('usuario_log_vendedor')) {
      context.handle(
        _usuarioLogVendedorMeta,
        usuarioLogVendedor.isAcceptableOrUnknown(
          data['usuario_log_vendedor']!,
          _usuarioLogVendedorMeta,
        ),
      );
    }
    if (data.containsKey('telefono_vendedor')) {
      context.handle(
        _telefonoVendedorMeta,
        telefonoVendedor.isAcceptableOrUnknown(
          data['telefono_vendedor']!,
          _telefonoVendedorMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {mlvId};
  @override
  MarcarLlegadaVisita map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MarcarLlegadaVisita.new(
      mlvId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}mlv_id'],
      )!,
      visId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vis_id'],
      )!,
      mlvHora: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mlv_hora'],
      )!,
      mlvLatitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}mlv_latitud'],
      )!,
      mlvLongitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}mlv_longitud'],
      )!,
      mlvEstadoDel: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}mlv_estado_del'],
      )!,
      mlvFechaCreacion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mlv_fecha_creacion'],
      )!,
      nombreCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_cliente'],
      ),
      nombreSucursalCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_sucursal_cliente'],
      ),
      sucursalLatitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sucursal_latitud'],
      ),
      sucursalLongitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sucursal_longitud'],
      ),
      nombreVendedor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_vendedor'],
      ),
      usuarioLogVendedor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}usuario_log_vendedor'],
      ),
      telefonoVendedor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefono_vendedor'],
      ),
    );
  }

  @override
  $TblMarcarllegadavisitaTable createAlias(String alias) {
    return $TblMarcarllegadavisitaTable(attachedDatabase, alias);
  }
}

class TblMarcarllegadavisitaCompanion
    extends UpdateCompanion<MarcarLlegadaVisita> {
  final Value<int> mlvId;
  final Value<int> visId;
  final Value<String> mlvHora;
  final Value<double> mlvLatitud;
  final Value<double> mlvLongitud;
  final Value<bool> mlvEstadoDel;
  final Value<String> mlvFechaCreacion;
  final Value<String?> nombreCliente;
  final Value<String?> nombreSucursalCliente;
  final Value<double?> sucursalLatitud;
  final Value<double?> sucursalLongitud;
  final Value<String?> nombreVendedor;
  final Value<String?> usuarioLogVendedor;
  final Value<String?> telefonoVendedor;
  const TblMarcarllegadavisitaCompanion({
    this.mlvId = const Value.absent(),
    this.visId = const Value.absent(),
    this.mlvHora = const Value.absent(),
    this.mlvLatitud = const Value.absent(),
    this.mlvLongitud = const Value.absent(),
    this.mlvEstadoDel = const Value.absent(),
    this.mlvFechaCreacion = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.nombreSucursalCliente = const Value.absent(),
    this.sucursalLatitud = const Value.absent(),
    this.sucursalLongitud = const Value.absent(),
    this.nombreVendedor = const Value.absent(),
    this.usuarioLogVendedor = const Value.absent(),
    this.telefonoVendedor = const Value.absent(),
  });
  TblMarcarllegadavisitaCompanion.insert({
    this.mlvId = const Value.absent(),
    required int visId,
    required String mlvHora,
    required double mlvLatitud,
    required double mlvLongitud,
    required bool mlvEstadoDel,
    required String mlvFechaCreacion,
    this.nombreCliente = const Value.absent(),
    this.nombreSucursalCliente = const Value.absent(),
    this.sucursalLatitud = const Value.absent(),
    this.sucursalLongitud = const Value.absent(),
    this.nombreVendedor = const Value.absent(),
    this.usuarioLogVendedor = const Value.absent(),
    this.telefonoVendedor = const Value.absent(),
  }) : visId = Value(visId),
       mlvHora = Value(mlvHora),
       mlvLatitud = Value(mlvLatitud),
       mlvLongitud = Value(mlvLongitud),
       mlvEstadoDel = Value(mlvEstadoDel),
       mlvFechaCreacion = Value(mlvFechaCreacion);
  static Insertable<MarcarLlegadaVisita> custom({
    Expression<int>? mlvId,
    Expression<int>? visId,
    Expression<String>? mlvHora,
    Expression<double>? mlvLatitud,
    Expression<double>? mlvLongitud,
    Expression<bool>? mlvEstadoDel,
    Expression<String>? mlvFechaCreacion,
    Expression<String>? nombreCliente,
    Expression<String>? nombreSucursalCliente,
    Expression<double>? sucursalLatitud,
    Expression<double>? sucursalLongitud,
    Expression<String>? nombreVendedor,
    Expression<String>? usuarioLogVendedor,
    Expression<String>? telefonoVendedor,
  }) {
    return RawValuesInsertable({
      if (mlvId != null) 'mlv_id': mlvId,
      if (visId != null) 'vis_id': visId,
      if (mlvHora != null) 'mlv_hora': mlvHora,
      if (mlvLatitud != null) 'mlv_latitud': mlvLatitud,
      if (mlvLongitud != null) 'mlv_longitud': mlvLongitud,
      if (mlvEstadoDel != null) 'mlv_estado_del': mlvEstadoDel,
      if (mlvFechaCreacion != null) 'mlv_fecha_creacion': mlvFechaCreacion,
      if (nombreCliente != null) 'nombre_cliente': nombreCliente,
      if (nombreSucursalCliente != null)
        'nombre_sucursal_cliente': nombreSucursalCliente,
      if (sucursalLatitud != null) 'sucursal_latitud': sucursalLatitud,
      if (sucursalLongitud != null) 'sucursal_longitud': sucursalLongitud,
      if (nombreVendedor != null) 'nombre_vendedor': nombreVendedor,
      if (usuarioLogVendedor != null)
        'usuario_log_vendedor': usuarioLogVendedor,
      if (telefonoVendedor != null) 'telefono_vendedor': telefonoVendedor,
    });
  }

  TblMarcarllegadavisitaCompanion copyWith({
    Value<int>? mlvId,
    Value<int>? visId,
    Value<String>? mlvHora,
    Value<double>? mlvLatitud,
    Value<double>? mlvLongitud,
    Value<bool>? mlvEstadoDel,
    Value<String>? mlvFechaCreacion,
    Value<String?>? nombreCliente,
    Value<String?>? nombreSucursalCliente,
    Value<double?>? sucursalLatitud,
    Value<double?>? sucursalLongitud,
    Value<String?>? nombreVendedor,
    Value<String?>? usuarioLogVendedor,
    Value<String?>? telefonoVendedor,
  }) {
    return TblMarcarllegadavisitaCompanion(
      mlvId: mlvId ?? this.mlvId,
      visId: visId ?? this.visId,
      mlvHora: mlvHora ?? this.mlvHora,
      mlvLatitud: mlvLatitud ?? this.mlvLatitud,
      mlvLongitud: mlvLongitud ?? this.mlvLongitud,
      mlvEstadoDel: mlvEstadoDel ?? this.mlvEstadoDel,
      mlvFechaCreacion: mlvFechaCreacion ?? this.mlvFechaCreacion,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      nombreSucursalCliente:
          nombreSucursalCliente ?? this.nombreSucursalCliente,
      sucursalLatitud: sucursalLatitud ?? this.sucursalLatitud,
      sucursalLongitud: sucursalLongitud ?? this.sucursalLongitud,
      nombreVendedor: nombreVendedor ?? this.nombreVendedor,
      usuarioLogVendedor: usuarioLogVendedor ?? this.usuarioLogVendedor,
      telefonoVendedor: telefonoVendedor ?? this.telefonoVendedor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mlvId.present) {
      map['mlv_id'] = Variable<int>(mlvId.value);
    }
    if (visId.present) {
      map['vis_id'] = Variable<int>(visId.value);
    }
    if (mlvHora.present) {
      map['mlv_hora'] = Variable<String>(mlvHora.value);
    }
    if (mlvLatitud.present) {
      map['mlv_latitud'] = Variable<double>(mlvLatitud.value);
    }
    if (mlvLongitud.present) {
      map['mlv_longitud'] = Variable<double>(mlvLongitud.value);
    }
    if (mlvEstadoDel.present) {
      map['mlv_estado_del'] = Variable<bool>(mlvEstadoDel.value);
    }
    if (mlvFechaCreacion.present) {
      map['mlv_fecha_creacion'] = Variable<String>(mlvFechaCreacion.value);
    }
    if (nombreCliente.present) {
      map['nombre_cliente'] = Variable<String>(nombreCliente.value);
    }
    if (nombreSucursalCliente.present) {
      map['nombre_sucursal_cliente'] = Variable<String>(
        nombreSucursalCliente.value,
      );
    }
    if (sucursalLatitud.present) {
      map['sucursal_latitud'] = Variable<double>(sucursalLatitud.value);
    }
    if (sucursalLongitud.present) {
      map['sucursal_longitud'] = Variable<double>(sucursalLongitud.value);
    }
    if (nombreVendedor.present) {
      map['nombre_vendedor'] = Variable<String>(nombreVendedor.value);
    }
    if (usuarioLogVendedor.present) {
      map['usuario_log_vendedor'] = Variable<String>(usuarioLogVendedor.value);
    }
    if (telefonoVendedor.present) {
      map['telefono_vendedor'] = Variable<String>(telefonoVendedor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblMarcarllegadavisitaCompanion(')
          ..write('mlvId: $mlvId, ')
          ..write('visId: $visId, ')
          ..write('mlvHora: $mlvHora, ')
          ..write('mlvLatitud: $mlvLatitud, ')
          ..write('mlvLongitud: $mlvLongitud, ')
          ..write('mlvEstadoDel: $mlvEstadoDel, ')
          ..write('mlvFechaCreacion: $mlvFechaCreacion, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('nombreSucursalCliente: $nombreSucursalCliente, ')
          ..write('sucursalLatitud: $sucursalLatitud, ')
          ..write('sucursalLongitud: $sucursalLongitud, ')
          ..write('nombreVendedor: $nombreVendedor, ')
          ..write('usuarioLogVendedor: $usuarioLogVendedor, ')
          ..write('telefonoVendedor: $telefonoVendedor')
          ..write(')'))
        .toString();
  }
}

class $TblEvidenciaTable extends TblEvidencia
    with TableInfo<$TblEvidenciaTable, Evidencia> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblEvidenciaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _eviIdMeta = const VerificationMeta('eviId');
  @override
  late final GeneratedColumn<int> eviId = GeneratedColumn<int>(
    'evi_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _visitaIdMeta = const VerificationMeta(
    'visitaId',
  );
  @override
  late final GeneratedColumn<int> visitaId = GeneratedColumn<int>(
    'visita_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _eviTipoMeta = const VerificationMeta(
    'eviTipo',
  );
  @override
  late final GeneratedColumn<String> eviTipo = GeneratedColumn<String>(
    'evi_tipo',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _eviObservacionesMeta = const VerificationMeta(
    'eviObservaciones',
  );
  @override
  late final GeneratedColumn<String> eviObservaciones = GeneratedColumn<String>(
    'evi_observaciones',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _eviArchivoUrlMeta = const VerificationMeta(
    'eviArchivoUrl',
  );
  @override
  late final GeneratedColumn<String> eviArchivoUrl = GeneratedColumn<String>(
    'evi_archivo_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _eviFechaCreacionMeta = const VerificationMeta(
    'eviFechaCreacion',
  );
  @override
  late final GeneratedColumn<DateTime> eviFechaCreacion =
      GeneratedColumn<DateTime>(
        'evi_fecha_creacion',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    eviId,
    visitaId,
    eviTipo,
    eviObservaciones,
    eviArchivoUrl,
    eviFechaCreacion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_evidencia';
  @override
  VerificationContext validateIntegrity(
    Insertable<Evidencia> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('evi_id')) {
      context.handle(
        _eviIdMeta,
        eviId.isAcceptableOrUnknown(data['evi_id']!, _eviIdMeta),
      );
    }
    if (data.containsKey('visita_id')) {
      context.handle(
        _visitaIdMeta,
        visitaId.isAcceptableOrUnknown(data['visita_id']!, _visitaIdMeta),
      );
    } else if (isInserting) {
      context.missing(_visitaIdMeta);
    }
    if (data.containsKey('evi_tipo')) {
      context.handle(
        _eviTipoMeta,
        eviTipo.isAcceptableOrUnknown(data['evi_tipo']!, _eviTipoMeta),
      );
    }
    if (data.containsKey('evi_observaciones')) {
      context.handle(
        _eviObservacionesMeta,
        eviObservaciones.isAcceptableOrUnknown(
          data['evi_observaciones']!,
          _eviObservacionesMeta,
        ),
      );
    }
    if (data.containsKey('evi_archivo_url')) {
      context.handle(
        _eviArchivoUrlMeta,
        eviArchivoUrl.isAcceptableOrUnknown(
          data['evi_archivo_url']!,
          _eviArchivoUrlMeta,
        ),
      );
    }
    if (data.containsKey('evi_fecha_creacion')) {
      context.handle(
        _eviFechaCreacionMeta,
        eviFechaCreacion.isAcceptableOrUnknown(
          data['evi_fecha_creacion']!,
          _eviFechaCreacionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_eviFechaCreacionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {eviId};
  @override
  Evidencia map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Evidencia.desdeBaseDeDatos(
      eviId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}evi_id'],
      )!,
      visitaId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}visita_id'],
      )!,
      eviTipo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}evi_tipo'],
      ),
      eviObservaciones: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}evi_observaciones'],
      ),
      eviFechaCreacion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}evi_fecha_creacion'],
      )!,
      eviArchivoUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}evi_archivo_url'],
      ),
    );
  }

  @override
  $TblEvidenciaTable createAlias(String alias) {
    return $TblEvidenciaTable(attachedDatabase, alias);
  }
}

class TblEvidenciaCompanion extends UpdateCompanion<Evidencia> {
  final Value<int> eviId;
  final Value<int> visitaId;
  final Value<String?> eviTipo;
  final Value<String?> eviObservaciones;
  final Value<String?> eviArchivoUrl;
  final Value<DateTime> eviFechaCreacion;
  const TblEvidenciaCompanion({
    this.eviId = const Value.absent(),
    this.visitaId = const Value.absent(),
    this.eviTipo = const Value.absent(),
    this.eviObservaciones = const Value.absent(),
    this.eviArchivoUrl = const Value.absent(),
    this.eviFechaCreacion = const Value.absent(),
  });
  TblEvidenciaCompanion.insert({
    this.eviId = const Value.absent(),
    required int visitaId,
    this.eviTipo = const Value.absent(),
    this.eviObservaciones = const Value.absent(),
    this.eviArchivoUrl = const Value.absent(),
    required DateTime eviFechaCreacion,
  }) : visitaId = Value(visitaId),
       eviFechaCreacion = Value(eviFechaCreacion);
  static Insertable<Evidencia> custom({
    Expression<int>? eviId,
    Expression<int>? visitaId,
    Expression<String>? eviTipo,
    Expression<String>? eviObservaciones,
    Expression<String>? eviArchivoUrl,
    Expression<DateTime>? eviFechaCreacion,
  }) {
    return RawValuesInsertable({
      if (eviId != null) 'evi_id': eviId,
      if (visitaId != null) 'visita_id': visitaId,
      if (eviTipo != null) 'evi_tipo': eviTipo,
      if (eviObservaciones != null) 'evi_observaciones': eviObservaciones,
      if (eviArchivoUrl != null) 'evi_archivo_url': eviArchivoUrl,
      if (eviFechaCreacion != null) 'evi_fecha_creacion': eviFechaCreacion,
    });
  }

  TblEvidenciaCompanion copyWith({
    Value<int>? eviId,
    Value<int>? visitaId,
    Value<String?>? eviTipo,
    Value<String?>? eviObservaciones,
    Value<String?>? eviArchivoUrl,
    Value<DateTime>? eviFechaCreacion,
  }) {
    return TblEvidenciaCompanion(
      eviId: eviId ?? this.eviId,
      visitaId: visitaId ?? this.visitaId,
      eviTipo: eviTipo ?? this.eviTipo,
      eviObservaciones: eviObservaciones ?? this.eviObservaciones,
      eviArchivoUrl: eviArchivoUrl ?? this.eviArchivoUrl,
      eviFechaCreacion: eviFechaCreacion ?? this.eviFechaCreacion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (eviId.present) {
      map['evi_id'] = Variable<int>(eviId.value);
    }
    if (visitaId.present) {
      map['visita_id'] = Variable<int>(visitaId.value);
    }
    if (eviTipo.present) {
      map['evi_tipo'] = Variable<String>(eviTipo.value);
    }
    if (eviObservaciones.present) {
      map['evi_observaciones'] = Variable<String>(eviObservaciones.value);
    }
    if (eviArchivoUrl.present) {
      map['evi_archivo_url'] = Variable<String>(eviArchivoUrl.value);
    }
    if (eviFechaCreacion.present) {
      map['evi_fecha_creacion'] = Variable<DateTime>(eviFechaCreacion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblEvidenciaCompanion(')
          ..write('eviId: $eviId, ')
          ..write('visitaId: $visitaId, ')
          ..write('eviTipo: $eviTipo, ')
          ..write('eviObservaciones: $eviObservaciones, ')
          ..write('eviArchivoUrl: $eviArchivoUrl, ')
          ..write('eviFechaCreacion: $eviFechaCreacion')
          ..write(')'))
        .toString();
  }
}

class $TblSeguimientovendedorTable extends TblSeguimientovendedor
    with TableInfo<$TblSeguimientovendedorTable, SeguimientoVendedor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TblSeguimientovendedorTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _segIdMeta = const VerificationMeta('segId');
  @override
  late final GeneratedColumn<int> segId = GeneratedColumn<int>(
    'seg_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _venIdMeta = const VerificationMeta('venId');
  @override
  late final GeneratedColumn<int> venId = GeneratedColumn<int>(
    'ven_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _segLatitudMeta = const VerificationMeta(
    'segLatitud',
  );
  @override
  late final GeneratedColumn<double> segLatitud = GeneratedColumn<double>(
    'seg_latitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _segLongitudMeta = const VerificationMeta(
    'segLongitud',
  );
  @override
  late final GeneratedColumn<double> segLongitud = GeneratedColumn<double>(
    'seg_longitud',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vendedorNombreMeta = const VerificationMeta(
    'vendedorNombre',
  );
  @override
  late final GeneratedColumn<String> vendedorNombre = GeneratedColumn<String>(
    'vendedor_nombre',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _segFechaCreacionMeta = const VerificationMeta(
    'segFechaCreacion',
  );
  @override
  late final GeneratedColumn<DateTime> segFechaCreacion =
      GeneratedColumn<DateTime>(
        'seg_fecha_creacion',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    segId,
    venId,
    segLatitud,
    segLongitud,
    vendedorNombre,
    segFechaCreacion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tbl_seguimientovendedor';
  @override
  VerificationContext validateIntegrity(
    Insertable<SeguimientoVendedor> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('seg_id')) {
      context.handle(
        _segIdMeta,
        segId.isAcceptableOrUnknown(data['seg_id']!, _segIdMeta),
      );
    }
    if (data.containsKey('ven_id')) {
      context.handle(
        _venIdMeta,
        venId.isAcceptableOrUnknown(data['ven_id']!, _venIdMeta),
      );
    } else if (isInserting) {
      context.missing(_venIdMeta);
    }
    if (data.containsKey('seg_latitud')) {
      context.handle(
        _segLatitudMeta,
        segLatitud.isAcceptableOrUnknown(data['seg_latitud']!, _segLatitudMeta),
      );
    } else if (isInserting) {
      context.missing(_segLatitudMeta);
    }
    if (data.containsKey('seg_longitud')) {
      context.handle(
        _segLongitudMeta,
        segLongitud.isAcceptableOrUnknown(
          data['seg_longitud']!,
          _segLongitudMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_segLongitudMeta);
    }
    if (data.containsKey('vendedor_nombre')) {
      context.handle(
        _vendedorNombreMeta,
        vendedorNombre.isAcceptableOrUnknown(
          data['vendedor_nombre']!,
          _vendedorNombreMeta,
        ),
      );
    }
    if (data.containsKey('seg_fecha_creacion')) {
      context.handle(
        _segFechaCreacionMeta,
        segFechaCreacion.isAcceptableOrUnknown(
          data['seg_fecha_creacion']!,
          _segFechaCreacionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_segFechaCreacionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {segId};
  @override
  SeguimientoVendedor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeguimientoVendedor.new(
      segId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}seg_id'],
      )!,
      venId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ven_id'],
      )!,
      segFechaCreacion: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}seg_fecha_creacion'],
      )!,
      segLatitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}seg_latitud'],
      )!,
      segLongitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}seg_longitud'],
      )!,
      vendedorNombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vendedor_nombre'],
      ),
    );
  }

  @override
  $TblSeguimientovendedorTable createAlias(String alias) {
    return $TblSeguimientovendedorTable(attachedDatabase, alias);
  }
}

class TblSeguimientovendedorCompanion
    extends UpdateCompanion<SeguimientoVendedor> {
  final Value<int> segId;
  final Value<int> venId;
  final Value<double> segLatitud;
  final Value<double> segLongitud;
  final Value<String?> vendedorNombre;
  final Value<DateTime> segFechaCreacion;
  const TblSeguimientovendedorCompanion({
    this.segId = const Value.absent(),
    this.venId = const Value.absent(),
    this.segLatitud = const Value.absent(),
    this.segLongitud = const Value.absent(),
    this.vendedorNombre = const Value.absent(),
    this.segFechaCreacion = const Value.absent(),
  });
  TblSeguimientovendedorCompanion.insert({
    this.segId = const Value.absent(),
    required int venId,
    required double segLatitud,
    required double segLongitud,
    this.vendedorNombre = const Value.absent(),
    required DateTime segFechaCreacion,
  }) : venId = Value(venId),
       segLatitud = Value(segLatitud),
       segLongitud = Value(segLongitud),
       segFechaCreacion = Value(segFechaCreacion);
  static Insertable<SeguimientoVendedor> custom({
    Expression<int>? segId,
    Expression<int>? venId,
    Expression<double>? segLatitud,
    Expression<double>? segLongitud,
    Expression<String>? vendedorNombre,
    Expression<DateTime>? segFechaCreacion,
  }) {
    return RawValuesInsertable({
      if (segId != null) 'seg_id': segId,
      if (venId != null) 'ven_id': venId,
      if (segLatitud != null) 'seg_latitud': segLatitud,
      if (segLongitud != null) 'seg_longitud': segLongitud,
      if (vendedorNombre != null) 'vendedor_nombre': vendedorNombre,
      if (segFechaCreacion != null) 'seg_fecha_creacion': segFechaCreacion,
    });
  }

  TblSeguimientovendedorCompanion copyWith({
    Value<int>? segId,
    Value<int>? venId,
    Value<double>? segLatitud,
    Value<double>? segLongitud,
    Value<String?>? vendedorNombre,
    Value<DateTime>? segFechaCreacion,
  }) {
    return TblSeguimientovendedorCompanion(
      segId: segId ?? this.segId,
      venId: venId ?? this.venId,
      segLatitud: segLatitud ?? this.segLatitud,
      segLongitud: segLongitud ?? this.segLongitud,
      vendedorNombre: vendedorNombre ?? this.vendedorNombre,
      segFechaCreacion: segFechaCreacion ?? this.segFechaCreacion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (segId.present) {
      map['seg_id'] = Variable<int>(segId.value);
    }
    if (venId.present) {
      map['ven_id'] = Variable<int>(venId.value);
    }
    if (segLatitud.present) {
      map['seg_latitud'] = Variable<double>(segLatitud.value);
    }
    if (segLongitud.present) {
      map['seg_longitud'] = Variable<double>(segLongitud.value);
    }
    if (vendedorNombre.present) {
      map['vendedor_nombre'] = Variable<String>(vendedorNombre.value);
    }
    if (segFechaCreacion.present) {
      map['seg_fecha_creacion'] = Variable<DateTime>(segFechaCreacion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TblSeguimientovendedorCompanion(')
          ..write('segId: $segId, ')
          ..write('venId: $venId, ')
          ..write('segLatitud: $segLatitud, ')
          ..write('segLongitud: $segLongitud, ')
          ..write('vendedorNombre: $vendedorNombre, ')
          ..write('segFechaCreacion: $segFechaCreacion')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppBaseDeDatos extends GeneratedDatabase {
  _$AppBaseDeDatos(QueryExecutor e) : super(e);
  $AppBaseDeDatosManager get managers => $AppBaseDeDatosManager(this);
  late final $TblUsuarioTable tblUsuario = $TblUsuarioTable(this);
  late final $TblAsistenciaTable tblAsistencia = $TblAsistenciaTable(this);
  late final $TblClienteTable tblCliente = $TblClienteTable(this);
  late final $TblRutaTable tblRuta = $TblRutaTable(this);
  late final $TblVisitaTable tblVisita = $TblVisitaTable(this);
  late final $TblMarcarllegadavisitaTable tblMarcarllegadavisita =
      $TblMarcarllegadavisitaTable(this);
  late final $TblEvidenciaTable tblEvidencia = $TblEvidenciaTable(this);
  late final $TblSeguimientovendedorTable tblSeguimientovendedor =
      $TblSeguimientovendedorTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    tblUsuario,
    tblAsistencia,
    tblCliente,
    tblRuta,
    tblVisita,
    tblMarcarllegadavisita,
    tblEvidencia,
    tblSeguimientovendedor,
  ];
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
typedef $$TblAsistenciaTableCreateCompanionBuilder =
    TblAsistenciaCompanion Function({
      Value<int> asiId,
      required double asiLatitud,
      required double asiLongitud,
      required int venId,
      required DateTime asiHoraEntrada,
      Value<DateTime?> asiHoraSalida,
      Value<String?> nombreVendedor,
    });
typedef $$TblAsistenciaTableUpdateCompanionBuilder =
    TblAsistenciaCompanion Function({
      Value<int> asiId,
      Value<double> asiLatitud,
      Value<double> asiLongitud,
      Value<int> venId,
      Value<DateTime> asiHoraEntrada,
      Value<DateTime?> asiHoraSalida,
      Value<String?> nombreVendedor,
    });

class $$TblAsistenciaTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblAsistenciaTable> {
  $$TblAsistenciaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get asiId => $composableBuilder(
    column: $table.asiId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get asiLatitud => $composableBuilder(
    column: $table.asiLatitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get asiLongitud => $composableBuilder(
    column: $table.asiLongitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get venId => $composableBuilder(
    column: $table.venId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get asiHoraEntrada => $composableBuilder(
    column: $table.asiHoraEntrada,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get asiHoraSalida => $composableBuilder(
    column: $table.asiHoraSalida,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblAsistenciaTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblAsistenciaTable> {
  $$TblAsistenciaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get asiId => $composableBuilder(
    column: $table.asiId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get asiLatitud => $composableBuilder(
    column: $table.asiLatitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get asiLongitud => $composableBuilder(
    column: $table.asiLongitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get venId => $composableBuilder(
    column: $table.venId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get asiHoraEntrada => $composableBuilder(
    column: $table.asiHoraEntrada,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get asiHoraSalida => $composableBuilder(
    column: $table.asiHoraSalida,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblAsistenciaTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblAsistenciaTable> {
  $$TblAsistenciaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get asiId =>
      $composableBuilder(column: $table.asiId, builder: (column) => column);

  GeneratedColumn<double> get asiLatitud => $composableBuilder(
    column: $table.asiLatitud,
    builder: (column) => column,
  );

  GeneratedColumn<double> get asiLongitud => $composableBuilder(
    column: $table.asiLongitud,
    builder: (column) => column,
  );

  GeneratedColumn<int> get venId =>
      $composableBuilder(column: $table.venId, builder: (column) => column);

  GeneratedColumn<DateTime> get asiHoraEntrada => $composableBuilder(
    column: $table.asiHoraEntrada,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get asiHoraSalida => $composableBuilder(
    column: $table.asiHoraSalida,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => column,
  );
}

class $$TblAsistenciaTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblAsistenciaTable,
          Asistencia,
          $$TblAsistenciaTableFilterComposer,
          $$TblAsistenciaTableOrderingComposer,
          $$TblAsistenciaTableAnnotationComposer,
          $$TblAsistenciaTableCreateCompanionBuilder,
          $$TblAsistenciaTableUpdateCompanionBuilder,
          (
            Asistencia,
            BaseReferences<_$AppBaseDeDatos, $TblAsistenciaTable, Asistencia>,
          ),
          Asistencia,
          PrefetchHooks Function()
        > {
  $$TblAsistenciaTableTableManager(
    _$AppBaseDeDatos db,
    $TblAsistenciaTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblAsistenciaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TblAsistenciaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TblAsistenciaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> asiId = const Value.absent(),
                Value<double> asiLatitud = const Value.absent(),
                Value<double> asiLongitud = const Value.absent(),
                Value<int> venId = const Value.absent(),
                Value<DateTime> asiHoraEntrada = const Value.absent(),
                Value<DateTime?> asiHoraSalida = const Value.absent(),
                Value<String?> nombreVendedor = const Value.absent(),
              }) => TblAsistenciaCompanion(
                asiId: asiId,
                asiLatitud: asiLatitud,
                asiLongitud: asiLongitud,
                venId: venId,
                asiHoraEntrada: asiHoraEntrada,
                asiHoraSalida: asiHoraSalida,
                nombreVendedor: nombreVendedor,
              ),
          createCompanionCallback:
              ({
                Value<int> asiId = const Value.absent(),
                required double asiLatitud,
                required double asiLongitud,
                required int venId,
                required DateTime asiHoraEntrada,
                Value<DateTime?> asiHoraSalida = const Value.absent(),
                Value<String?> nombreVendedor = const Value.absent(),
              }) => TblAsistenciaCompanion.insert(
                asiId: asiId,
                asiLatitud: asiLatitud,
                asiLongitud: asiLongitud,
                venId: venId,
                asiHoraEntrada: asiHoraEntrada,
                asiHoraSalida: asiHoraSalida,
                nombreVendedor: nombreVendedor,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblAsistenciaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblAsistenciaTable,
      Asistencia,
      $$TblAsistenciaTableFilterComposer,
      $$TblAsistenciaTableOrderingComposer,
      $$TblAsistenciaTableAnnotationComposer,
      $$TblAsistenciaTableCreateCompanionBuilder,
      $$TblAsistenciaTableUpdateCompanionBuilder,
      (
        Asistencia,
        BaseReferences<_$AppBaseDeDatos, $TblAsistenciaTable, Asistencia>,
      ),
      Asistencia,
      PrefetchHooks Function()
    >;
typedef $$TblClienteTableCreateCompanionBuilder =
    TblClienteCompanion Function({
      Value<int> clId,
      required String clNombreCompleto,
      required String clCarnetIdentidad,
      required String clNitCliente,
      Value<String?> clTipoCliente,
      required String clTelefono,
    });
typedef $$TblClienteTableUpdateCompanionBuilder =
    TblClienteCompanion Function({
      Value<int> clId,
      Value<String> clNombreCompleto,
      Value<String> clCarnetIdentidad,
      Value<String> clNitCliente,
      Value<String?> clTipoCliente,
      Value<String> clTelefono,
    });

class $$TblClienteTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblClienteTable> {
  $$TblClienteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get clId => $composableBuilder(
    column: $table.clId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clNombreCompleto => $composableBuilder(
    column: $table.clNombreCompleto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clCarnetIdentidad => $composableBuilder(
    column: $table.clCarnetIdentidad,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clNitCliente => $composableBuilder(
    column: $table.clNitCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clTipoCliente => $composableBuilder(
    column: $table.clTipoCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clTelefono => $composableBuilder(
    column: $table.clTelefono,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblClienteTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblClienteTable> {
  $$TblClienteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get clId => $composableBuilder(
    column: $table.clId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clNombreCompleto => $composableBuilder(
    column: $table.clNombreCompleto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clCarnetIdentidad => $composableBuilder(
    column: $table.clCarnetIdentidad,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clNitCliente => $composableBuilder(
    column: $table.clNitCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clTipoCliente => $composableBuilder(
    column: $table.clTipoCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clTelefono => $composableBuilder(
    column: $table.clTelefono,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblClienteTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblClienteTable> {
  $$TblClienteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get clId =>
      $composableBuilder(column: $table.clId, builder: (column) => column);

  GeneratedColumn<String> get clNombreCompleto => $composableBuilder(
    column: $table.clNombreCompleto,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clCarnetIdentidad => $composableBuilder(
    column: $table.clCarnetIdentidad,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clNitCliente => $composableBuilder(
    column: $table.clNitCliente,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clTipoCliente => $composableBuilder(
    column: $table.clTipoCliente,
    builder: (column) => column,
  );

  GeneratedColumn<String> get clTelefono => $composableBuilder(
    column: $table.clTelefono,
    builder: (column) => column,
  );
}

class $$TblClienteTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblClienteTable,
          Cliente,
          $$TblClienteTableFilterComposer,
          $$TblClienteTableOrderingComposer,
          $$TblClienteTableAnnotationComposer,
          $$TblClienteTableCreateCompanionBuilder,
          $$TblClienteTableUpdateCompanionBuilder,
          (
            Cliente,
            BaseReferences<_$AppBaseDeDatos, $TblClienteTable, Cliente>,
          ),
          Cliente,
          PrefetchHooks Function()
        > {
  $$TblClienteTableTableManager(_$AppBaseDeDatos db, $TblClienteTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblClienteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TblClienteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TblClienteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> clId = const Value.absent(),
                Value<String> clNombreCompleto = const Value.absent(),
                Value<String> clCarnetIdentidad = const Value.absent(),
                Value<String> clNitCliente = const Value.absent(),
                Value<String?> clTipoCliente = const Value.absent(),
                Value<String> clTelefono = const Value.absent(),
              }) => TblClienteCompanion(
                clId: clId,
                clNombreCompleto: clNombreCompleto,
                clCarnetIdentidad: clCarnetIdentidad,
                clNitCliente: clNitCliente,
                clTipoCliente: clTipoCliente,
                clTelefono: clTelefono,
              ),
          createCompanionCallback:
              ({
                Value<int> clId = const Value.absent(),
                required String clNombreCompleto,
                required String clCarnetIdentidad,
                required String clNitCliente,
                Value<String?> clTipoCliente = const Value.absent(),
                required String clTelefono,
              }) => TblClienteCompanion.insert(
                clId: clId,
                clNombreCompleto: clNombreCompleto,
                clCarnetIdentidad: clCarnetIdentidad,
                clNitCliente: clNitCliente,
                clTipoCliente: clTipoCliente,
                clTelefono: clTelefono,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblClienteTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblClienteTable,
      Cliente,
      $$TblClienteTableFilterComposer,
      $$TblClienteTableOrderingComposer,
      $$TblClienteTableAnnotationComposer,
      $$TblClienteTableCreateCompanionBuilder,
      $$TblClienteTableUpdateCompanionBuilder,
      (Cliente, BaseReferences<_$AppBaseDeDatos, $TblClienteTable, Cliente>),
      Cliente,
      PrefetchHooks Function()
    >;
typedef $$TblRutaTableCreateCompanionBuilder =
    TblRutaCompanion Function({
      Value<int> rutId,
      required int venId,
      required int supId,
      required String rutNombre,
      required String rutComentario,
      required DateTime rutFechaEjecucion,
      Value<String?> nombreVendedor,
      Value<String?> nombreSupervisor,
    });
typedef $$TblRutaTableUpdateCompanionBuilder =
    TblRutaCompanion Function({
      Value<int> rutId,
      Value<int> venId,
      Value<int> supId,
      Value<String> rutNombre,
      Value<String> rutComentario,
      Value<DateTime> rutFechaEjecucion,
      Value<String?> nombreVendedor,
      Value<String?> nombreSupervisor,
    });

class $$TblRutaTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblRutaTable> {
  $$TblRutaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get rutId => $composableBuilder(
    column: $table.rutId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get venId => $composableBuilder(
    column: $table.venId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get supId => $composableBuilder(
    column: $table.supId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rutNombre => $composableBuilder(
    column: $table.rutNombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rutComentario => $composableBuilder(
    column: $table.rutComentario,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get rutFechaEjecucion => $composableBuilder(
    column: $table.rutFechaEjecucion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreSupervisor => $composableBuilder(
    column: $table.nombreSupervisor,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblRutaTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblRutaTable> {
  $$TblRutaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get rutId => $composableBuilder(
    column: $table.rutId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get venId => $composableBuilder(
    column: $table.venId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get supId => $composableBuilder(
    column: $table.supId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rutNombre => $composableBuilder(
    column: $table.rutNombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rutComentario => $composableBuilder(
    column: $table.rutComentario,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get rutFechaEjecucion => $composableBuilder(
    column: $table.rutFechaEjecucion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreSupervisor => $composableBuilder(
    column: $table.nombreSupervisor,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblRutaTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblRutaTable> {
  $$TblRutaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get rutId =>
      $composableBuilder(column: $table.rutId, builder: (column) => column);

  GeneratedColumn<int> get venId =>
      $composableBuilder(column: $table.venId, builder: (column) => column);

  GeneratedColumn<int> get supId =>
      $composableBuilder(column: $table.supId, builder: (column) => column);

  GeneratedColumn<String> get rutNombre =>
      $composableBuilder(column: $table.rutNombre, builder: (column) => column);

  GeneratedColumn<String> get rutComentario => $composableBuilder(
    column: $table.rutComentario,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get rutFechaEjecucion => $composableBuilder(
    column: $table.rutFechaEjecucion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreSupervisor => $composableBuilder(
    column: $table.nombreSupervisor,
    builder: (column) => column,
  );
}

class $$TblRutaTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblRutaTable,
          Ruta,
          $$TblRutaTableFilterComposer,
          $$TblRutaTableOrderingComposer,
          $$TblRutaTableAnnotationComposer,
          $$TblRutaTableCreateCompanionBuilder,
          $$TblRutaTableUpdateCompanionBuilder,
          (Ruta, BaseReferences<_$AppBaseDeDatos, $TblRutaTable, Ruta>),
          Ruta,
          PrefetchHooks Function()
        > {
  $$TblRutaTableTableManager(_$AppBaseDeDatos db, $TblRutaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblRutaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TblRutaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TblRutaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> rutId = const Value.absent(),
                Value<int> venId = const Value.absent(),
                Value<int> supId = const Value.absent(),
                Value<String> rutNombre = const Value.absent(),
                Value<String> rutComentario = const Value.absent(),
                Value<DateTime> rutFechaEjecucion = const Value.absent(),
                Value<String?> nombreVendedor = const Value.absent(),
                Value<String?> nombreSupervisor = const Value.absent(),
              }) => TblRutaCompanion(
                rutId: rutId,
                venId: venId,
                supId: supId,
                rutNombre: rutNombre,
                rutComentario: rutComentario,
                rutFechaEjecucion: rutFechaEjecucion,
                nombreVendedor: nombreVendedor,
                nombreSupervisor: nombreSupervisor,
              ),
          createCompanionCallback:
              ({
                Value<int> rutId = const Value.absent(),
                required int venId,
                required int supId,
                required String rutNombre,
                required String rutComentario,
                required DateTime rutFechaEjecucion,
                Value<String?> nombreVendedor = const Value.absent(),
                Value<String?> nombreSupervisor = const Value.absent(),
              }) => TblRutaCompanion.insert(
                rutId: rutId,
                venId: venId,
                supId: supId,
                rutNombre: rutNombre,
                rutComentario: rutComentario,
                rutFechaEjecucion: rutFechaEjecucion,
                nombreVendedor: nombreVendedor,
                nombreSupervisor: nombreSupervisor,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblRutaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblRutaTable,
      Ruta,
      $$TblRutaTableFilterComposer,
      $$TblRutaTableOrderingComposer,
      $$TblRutaTableAnnotationComposer,
      $$TblRutaTableCreateCompanionBuilder,
      $$TblRutaTableUpdateCompanionBuilder,
      (Ruta, BaseReferences<_$AppBaseDeDatos, $TblRutaTable, Ruta>),
      Ruta,
      PrefetchHooks Function()
    >;
typedef $$TblVisitaTableCreateCompanionBuilder =
    TblVisitaCompanion Function({
      Value<int> visId,
      required int rutId,
      required int dirClId,
      required String visComentario,
      required String nombreCliente,
      required String nombreSucursalCliente,
      required bool visEstadoDel,
      required double sucursalLatitud,
      required double sucursalLongitud,
      required String nombreZona,
      required String direccion,
      required String nombreVendedor,
      required String nombreRuta,
      required DateTime fechaEjecucionRuta,
      required DateTime visFechaCreacion,
    });
typedef $$TblVisitaTableUpdateCompanionBuilder =
    TblVisitaCompanion Function({
      Value<int> visId,
      Value<int> rutId,
      Value<int> dirClId,
      Value<String> visComentario,
      Value<String> nombreCliente,
      Value<String> nombreSucursalCliente,
      Value<bool> visEstadoDel,
      Value<double> sucursalLatitud,
      Value<double> sucursalLongitud,
      Value<String> nombreZona,
      Value<String> direccion,
      Value<String> nombreVendedor,
      Value<String> nombreRuta,
      Value<DateTime> fechaEjecucionRuta,
      Value<DateTime> visFechaCreacion,
    });

class $$TblVisitaTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblVisitaTable> {
  $$TblVisitaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get visId => $composableBuilder(
    column: $table.visId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rutId => $composableBuilder(
    column: $table.rutId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dirClId => $composableBuilder(
    column: $table.dirClId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get visComentario => $composableBuilder(
    column: $table.visComentario,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreSucursalCliente => $composableBuilder(
    column: $table.nombreSucursalCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get visEstadoDel => $composableBuilder(
    column: $table.visEstadoDel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sucursalLatitud => $composableBuilder(
    column: $table.sucursalLatitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sucursalLongitud => $composableBuilder(
    column: $table.sucursalLongitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreZona => $composableBuilder(
    column: $table.nombreZona,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get direccion => $composableBuilder(
    column: $table.direccion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreRuta => $composableBuilder(
    column: $table.nombreRuta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaEjecucionRuta => $composableBuilder(
    column: $table.fechaEjecucionRuta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get visFechaCreacion => $composableBuilder(
    column: $table.visFechaCreacion,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblVisitaTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblVisitaTable> {
  $$TblVisitaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get visId => $composableBuilder(
    column: $table.visId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rutId => $composableBuilder(
    column: $table.rutId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dirClId => $composableBuilder(
    column: $table.dirClId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get visComentario => $composableBuilder(
    column: $table.visComentario,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreSucursalCliente => $composableBuilder(
    column: $table.nombreSucursalCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get visEstadoDel => $composableBuilder(
    column: $table.visEstadoDel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sucursalLatitud => $composableBuilder(
    column: $table.sucursalLatitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sucursalLongitud => $composableBuilder(
    column: $table.sucursalLongitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreZona => $composableBuilder(
    column: $table.nombreZona,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get direccion => $composableBuilder(
    column: $table.direccion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreRuta => $composableBuilder(
    column: $table.nombreRuta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaEjecucionRuta => $composableBuilder(
    column: $table.fechaEjecucionRuta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get visFechaCreacion => $composableBuilder(
    column: $table.visFechaCreacion,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblVisitaTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblVisitaTable> {
  $$TblVisitaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get visId =>
      $composableBuilder(column: $table.visId, builder: (column) => column);

  GeneratedColumn<int> get rutId =>
      $composableBuilder(column: $table.rutId, builder: (column) => column);

  GeneratedColumn<int> get dirClId =>
      $composableBuilder(column: $table.dirClId, builder: (column) => column);

  GeneratedColumn<String> get visComentario => $composableBuilder(
    column: $table.visComentario,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreSucursalCliente => $composableBuilder(
    column: $table.nombreSucursalCliente,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get visEstadoDel => $composableBuilder(
    column: $table.visEstadoDel,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sucursalLatitud => $composableBuilder(
    column: $table.sucursalLatitud,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sucursalLongitud => $composableBuilder(
    column: $table.sucursalLongitud,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreZona => $composableBuilder(
    column: $table.nombreZona,
    builder: (column) => column,
  );

  GeneratedColumn<String> get direccion =>
      $composableBuilder(column: $table.direccion, builder: (column) => column);

  GeneratedColumn<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreRuta => $composableBuilder(
    column: $table.nombreRuta,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaEjecucionRuta => $composableBuilder(
    column: $table.fechaEjecucionRuta,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get visFechaCreacion => $composableBuilder(
    column: $table.visFechaCreacion,
    builder: (column) => column,
  );
}

class $$TblVisitaTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblVisitaTable,
          Visita,
          $$TblVisitaTableFilterComposer,
          $$TblVisitaTableOrderingComposer,
          $$TblVisitaTableAnnotationComposer,
          $$TblVisitaTableCreateCompanionBuilder,
          $$TblVisitaTableUpdateCompanionBuilder,
          (Visita, BaseReferences<_$AppBaseDeDatos, $TblVisitaTable, Visita>),
          Visita,
          PrefetchHooks Function()
        > {
  $$TblVisitaTableTableManager(_$AppBaseDeDatos db, $TblVisitaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblVisitaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TblVisitaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TblVisitaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> visId = const Value.absent(),
                Value<int> rutId = const Value.absent(),
                Value<int> dirClId = const Value.absent(),
                Value<String> visComentario = const Value.absent(),
                Value<String> nombreCliente = const Value.absent(),
                Value<String> nombreSucursalCliente = const Value.absent(),
                Value<bool> visEstadoDel = const Value.absent(),
                Value<double> sucursalLatitud = const Value.absent(),
                Value<double> sucursalLongitud = const Value.absent(),
                Value<String> nombreZona = const Value.absent(),
                Value<String> direccion = const Value.absent(),
                Value<String> nombreVendedor = const Value.absent(),
                Value<String> nombreRuta = const Value.absent(),
                Value<DateTime> fechaEjecucionRuta = const Value.absent(),
                Value<DateTime> visFechaCreacion = const Value.absent(),
              }) => TblVisitaCompanion(
                visId: visId,
                rutId: rutId,
                dirClId: dirClId,
                visComentario: visComentario,
                nombreCliente: nombreCliente,
                nombreSucursalCliente: nombreSucursalCliente,
                visEstadoDel: visEstadoDel,
                sucursalLatitud: sucursalLatitud,
                sucursalLongitud: sucursalLongitud,
                nombreZona: nombreZona,
                direccion: direccion,
                nombreVendedor: nombreVendedor,
                nombreRuta: nombreRuta,
                fechaEjecucionRuta: fechaEjecucionRuta,
                visFechaCreacion: visFechaCreacion,
              ),
          createCompanionCallback:
              ({
                Value<int> visId = const Value.absent(),
                required int rutId,
                required int dirClId,
                required String visComentario,
                required String nombreCliente,
                required String nombreSucursalCliente,
                required bool visEstadoDel,
                required double sucursalLatitud,
                required double sucursalLongitud,
                required String nombreZona,
                required String direccion,
                required String nombreVendedor,
                required String nombreRuta,
                required DateTime fechaEjecucionRuta,
                required DateTime visFechaCreacion,
              }) => TblVisitaCompanion.insert(
                visId: visId,
                rutId: rutId,
                dirClId: dirClId,
                visComentario: visComentario,
                nombreCliente: nombreCliente,
                nombreSucursalCliente: nombreSucursalCliente,
                visEstadoDel: visEstadoDel,
                sucursalLatitud: sucursalLatitud,
                sucursalLongitud: sucursalLongitud,
                nombreZona: nombreZona,
                direccion: direccion,
                nombreVendedor: nombreVendedor,
                nombreRuta: nombreRuta,
                fechaEjecucionRuta: fechaEjecucionRuta,
                visFechaCreacion: visFechaCreacion,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblVisitaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblVisitaTable,
      Visita,
      $$TblVisitaTableFilterComposer,
      $$TblVisitaTableOrderingComposer,
      $$TblVisitaTableAnnotationComposer,
      $$TblVisitaTableCreateCompanionBuilder,
      $$TblVisitaTableUpdateCompanionBuilder,
      (Visita, BaseReferences<_$AppBaseDeDatos, $TblVisitaTable, Visita>),
      Visita,
      PrefetchHooks Function()
    >;
typedef $$TblMarcarllegadavisitaTableCreateCompanionBuilder =
    TblMarcarllegadavisitaCompanion Function({
      Value<int> mlvId,
      required int visId,
      required String mlvHora,
      required double mlvLatitud,
      required double mlvLongitud,
      required bool mlvEstadoDel,
      required String mlvFechaCreacion,
      Value<String?> nombreCliente,
      Value<String?> nombreSucursalCliente,
      Value<double?> sucursalLatitud,
      Value<double?> sucursalLongitud,
      Value<String?> nombreVendedor,
      Value<String?> usuarioLogVendedor,
      Value<String?> telefonoVendedor,
    });
typedef $$TblMarcarllegadavisitaTableUpdateCompanionBuilder =
    TblMarcarllegadavisitaCompanion Function({
      Value<int> mlvId,
      Value<int> visId,
      Value<String> mlvHora,
      Value<double> mlvLatitud,
      Value<double> mlvLongitud,
      Value<bool> mlvEstadoDel,
      Value<String> mlvFechaCreacion,
      Value<String?> nombreCliente,
      Value<String?> nombreSucursalCliente,
      Value<double?> sucursalLatitud,
      Value<double?> sucursalLongitud,
      Value<String?> nombreVendedor,
      Value<String?> usuarioLogVendedor,
      Value<String?> telefonoVendedor,
    });

class $$TblMarcarllegadavisitaTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblMarcarllegadavisitaTable> {
  $$TblMarcarllegadavisitaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get mlvId => $composableBuilder(
    column: $table.mlvId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get visId => $composableBuilder(
    column: $table.visId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mlvHora => $composableBuilder(
    column: $table.mlvHora,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get mlvLatitud => $composableBuilder(
    column: $table.mlvLatitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get mlvLongitud => $composableBuilder(
    column: $table.mlvLongitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get mlvEstadoDel => $composableBuilder(
    column: $table.mlvEstadoDel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mlvFechaCreacion => $composableBuilder(
    column: $table.mlvFechaCreacion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreSucursalCliente => $composableBuilder(
    column: $table.nombreSucursalCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sucursalLatitud => $composableBuilder(
    column: $table.sucursalLatitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sucursalLongitud => $composableBuilder(
    column: $table.sucursalLongitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get usuarioLogVendedor => $composableBuilder(
    column: $table.usuarioLogVendedor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefonoVendedor => $composableBuilder(
    column: $table.telefonoVendedor,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblMarcarllegadavisitaTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblMarcarllegadavisitaTable> {
  $$TblMarcarllegadavisitaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get mlvId => $composableBuilder(
    column: $table.mlvId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get visId => $composableBuilder(
    column: $table.visId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mlvHora => $composableBuilder(
    column: $table.mlvHora,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get mlvLatitud => $composableBuilder(
    column: $table.mlvLatitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get mlvLongitud => $composableBuilder(
    column: $table.mlvLongitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get mlvEstadoDel => $composableBuilder(
    column: $table.mlvEstadoDel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mlvFechaCreacion => $composableBuilder(
    column: $table.mlvFechaCreacion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreSucursalCliente => $composableBuilder(
    column: $table.nombreSucursalCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sucursalLatitud => $composableBuilder(
    column: $table.sucursalLatitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sucursalLongitud => $composableBuilder(
    column: $table.sucursalLongitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get usuarioLogVendedor => $composableBuilder(
    column: $table.usuarioLogVendedor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefonoVendedor => $composableBuilder(
    column: $table.telefonoVendedor,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblMarcarllegadavisitaTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblMarcarllegadavisitaTable> {
  $$TblMarcarllegadavisitaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get mlvId =>
      $composableBuilder(column: $table.mlvId, builder: (column) => column);

  GeneratedColumn<int> get visId =>
      $composableBuilder(column: $table.visId, builder: (column) => column);

  GeneratedColumn<String> get mlvHora =>
      $composableBuilder(column: $table.mlvHora, builder: (column) => column);

  GeneratedColumn<double> get mlvLatitud => $composableBuilder(
    column: $table.mlvLatitud,
    builder: (column) => column,
  );

  GeneratedColumn<double> get mlvLongitud => $composableBuilder(
    column: $table.mlvLongitud,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get mlvEstadoDel => $composableBuilder(
    column: $table.mlvEstadoDel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mlvFechaCreacion => $composableBuilder(
    column: $table.mlvFechaCreacion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreSucursalCliente => $composableBuilder(
    column: $table.nombreSucursalCliente,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sucursalLatitud => $composableBuilder(
    column: $table.sucursalLatitud,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sucursalLongitud => $composableBuilder(
    column: $table.sucursalLongitud,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nombreVendedor => $composableBuilder(
    column: $table.nombreVendedor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get usuarioLogVendedor => $composableBuilder(
    column: $table.usuarioLogVendedor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get telefonoVendedor => $composableBuilder(
    column: $table.telefonoVendedor,
    builder: (column) => column,
  );
}

class $$TblMarcarllegadavisitaTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblMarcarllegadavisitaTable,
          MarcarLlegadaVisita,
          $$TblMarcarllegadavisitaTableFilterComposer,
          $$TblMarcarllegadavisitaTableOrderingComposer,
          $$TblMarcarllegadavisitaTableAnnotationComposer,
          $$TblMarcarllegadavisitaTableCreateCompanionBuilder,
          $$TblMarcarllegadavisitaTableUpdateCompanionBuilder,
          (
            MarcarLlegadaVisita,
            BaseReferences<
              _$AppBaseDeDatos,
              $TblMarcarllegadavisitaTable,
              MarcarLlegadaVisita
            >,
          ),
          MarcarLlegadaVisita,
          PrefetchHooks Function()
        > {
  $$TblMarcarllegadavisitaTableTableManager(
    _$AppBaseDeDatos db,
    $TblMarcarllegadavisitaTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblMarcarllegadavisitaTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$TblMarcarllegadavisitaTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TblMarcarllegadavisitaTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> mlvId = const Value.absent(),
                Value<int> visId = const Value.absent(),
                Value<String> mlvHora = const Value.absent(),
                Value<double> mlvLatitud = const Value.absent(),
                Value<double> mlvLongitud = const Value.absent(),
                Value<bool> mlvEstadoDel = const Value.absent(),
                Value<String> mlvFechaCreacion = const Value.absent(),
                Value<String?> nombreCliente = const Value.absent(),
                Value<String?> nombreSucursalCliente = const Value.absent(),
                Value<double?> sucursalLatitud = const Value.absent(),
                Value<double?> sucursalLongitud = const Value.absent(),
                Value<String?> nombreVendedor = const Value.absent(),
                Value<String?> usuarioLogVendedor = const Value.absent(),
                Value<String?> telefonoVendedor = const Value.absent(),
              }) => TblMarcarllegadavisitaCompanion(
                mlvId: mlvId,
                visId: visId,
                mlvHora: mlvHora,
                mlvLatitud: mlvLatitud,
                mlvLongitud: mlvLongitud,
                mlvEstadoDel: mlvEstadoDel,
                mlvFechaCreacion: mlvFechaCreacion,
                nombreCliente: nombreCliente,
                nombreSucursalCliente: nombreSucursalCliente,
                sucursalLatitud: sucursalLatitud,
                sucursalLongitud: sucursalLongitud,
                nombreVendedor: nombreVendedor,
                usuarioLogVendedor: usuarioLogVendedor,
                telefonoVendedor: telefonoVendedor,
              ),
          createCompanionCallback:
              ({
                Value<int> mlvId = const Value.absent(),
                required int visId,
                required String mlvHora,
                required double mlvLatitud,
                required double mlvLongitud,
                required bool mlvEstadoDel,
                required String mlvFechaCreacion,
                Value<String?> nombreCliente = const Value.absent(),
                Value<String?> nombreSucursalCliente = const Value.absent(),
                Value<double?> sucursalLatitud = const Value.absent(),
                Value<double?> sucursalLongitud = const Value.absent(),
                Value<String?> nombreVendedor = const Value.absent(),
                Value<String?> usuarioLogVendedor = const Value.absent(),
                Value<String?> telefonoVendedor = const Value.absent(),
              }) => TblMarcarllegadavisitaCompanion.insert(
                mlvId: mlvId,
                visId: visId,
                mlvHora: mlvHora,
                mlvLatitud: mlvLatitud,
                mlvLongitud: mlvLongitud,
                mlvEstadoDel: mlvEstadoDel,
                mlvFechaCreacion: mlvFechaCreacion,
                nombreCliente: nombreCliente,
                nombreSucursalCliente: nombreSucursalCliente,
                sucursalLatitud: sucursalLatitud,
                sucursalLongitud: sucursalLongitud,
                nombreVendedor: nombreVendedor,
                usuarioLogVendedor: usuarioLogVendedor,
                telefonoVendedor: telefonoVendedor,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblMarcarllegadavisitaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblMarcarllegadavisitaTable,
      MarcarLlegadaVisita,
      $$TblMarcarllegadavisitaTableFilterComposer,
      $$TblMarcarllegadavisitaTableOrderingComposer,
      $$TblMarcarllegadavisitaTableAnnotationComposer,
      $$TblMarcarllegadavisitaTableCreateCompanionBuilder,
      $$TblMarcarllegadavisitaTableUpdateCompanionBuilder,
      (
        MarcarLlegadaVisita,
        BaseReferences<
          _$AppBaseDeDatos,
          $TblMarcarllegadavisitaTable,
          MarcarLlegadaVisita
        >,
      ),
      MarcarLlegadaVisita,
      PrefetchHooks Function()
    >;
typedef $$TblEvidenciaTableCreateCompanionBuilder =
    TblEvidenciaCompanion Function({
      Value<int> eviId,
      required int visitaId,
      Value<String?> eviTipo,
      Value<String?> eviObservaciones,
      Value<String?> eviArchivoUrl,
      required DateTime eviFechaCreacion,
    });
typedef $$TblEvidenciaTableUpdateCompanionBuilder =
    TblEvidenciaCompanion Function({
      Value<int> eviId,
      Value<int> visitaId,
      Value<String?> eviTipo,
      Value<String?> eviObservaciones,
      Value<String?> eviArchivoUrl,
      Value<DateTime> eviFechaCreacion,
    });

class $$TblEvidenciaTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblEvidenciaTable> {
  $$TblEvidenciaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get eviId => $composableBuilder(
    column: $table.eviId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get visitaId => $composableBuilder(
    column: $table.visitaId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eviTipo => $composableBuilder(
    column: $table.eviTipo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eviObservaciones => $composableBuilder(
    column: $table.eviObservaciones,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eviArchivoUrl => $composableBuilder(
    column: $table.eviArchivoUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get eviFechaCreacion => $composableBuilder(
    column: $table.eviFechaCreacion,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblEvidenciaTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblEvidenciaTable> {
  $$TblEvidenciaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get eviId => $composableBuilder(
    column: $table.eviId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get visitaId => $composableBuilder(
    column: $table.visitaId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eviTipo => $composableBuilder(
    column: $table.eviTipo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eviObservaciones => $composableBuilder(
    column: $table.eviObservaciones,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eviArchivoUrl => $composableBuilder(
    column: $table.eviArchivoUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get eviFechaCreacion => $composableBuilder(
    column: $table.eviFechaCreacion,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblEvidenciaTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblEvidenciaTable> {
  $$TblEvidenciaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get eviId =>
      $composableBuilder(column: $table.eviId, builder: (column) => column);

  GeneratedColumn<int> get visitaId =>
      $composableBuilder(column: $table.visitaId, builder: (column) => column);

  GeneratedColumn<String> get eviTipo =>
      $composableBuilder(column: $table.eviTipo, builder: (column) => column);

  GeneratedColumn<String> get eviObservaciones => $composableBuilder(
    column: $table.eviObservaciones,
    builder: (column) => column,
  );

  GeneratedColumn<String> get eviArchivoUrl => $composableBuilder(
    column: $table.eviArchivoUrl,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get eviFechaCreacion => $composableBuilder(
    column: $table.eviFechaCreacion,
    builder: (column) => column,
  );
}

class $$TblEvidenciaTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblEvidenciaTable,
          Evidencia,
          $$TblEvidenciaTableFilterComposer,
          $$TblEvidenciaTableOrderingComposer,
          $$TblEvidenciaTableAnnotationComposer,
          $$TblEvidenciaTableCreateCompanionBuilder,
          $$TblEvidenciaTableUpdateCompanionBuilder,
          (
            Evidencia,
            BaseReferences<_$AppBaseDeDatos, $TblEvidenciaTable, Evidencia>,
          ),
          Evidencia,
          PrefetchHooks Function()
        > {
  $$TblEvidenciaTableTableManager(_$AppBaseDeDatos db, $TblEvidenciaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblEvidenciaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TblEvidenciaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TblEvidenciaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> eviId = const Value.absent(),
                Value<int> visitaId = const Value.absent(),
                Value<String?> eviTipo = const Value.absent(),
                Value<String?> eviObservaciones = const Value.absent(),
                Value<String?> eviArchivoUrl = const Value.absent(),
                Value<DateTime> eviFechaCreacion = const Value.absent(),
              }) => TblEvidenciaCompanion(
                eviId: eviId,
                visitaId: visitaId,
                eviTipo: eviTipo,
                eviObservaciones: eviObservaciones,
                eviArchivoUrl: eviArchivoUrl,
                eviFechaCreacion: eviFechaCreacion,
              ),
          createCompanionCallback:
              ({
                Value<int> eviId = const Value.absent(),
                required int visitaId,
                Value<String?> eviTipo = const Value.absent(),
                Value<String?> eviObservaciones = const Value.absent(),
                Value<String?> eviArchivoUrl = const Value.absent(),
                required DateTime eviFechaCreacion,
              }) => TblEvidenciaCompanion.insert(
                eviId: eviId,
                visitaId: visitaId,
                eviTipo: eviTipo,
                eviObservaciones: eviObservaciones,
                eviArchivoUrl: eviArchivoUrl,
                eviFechaCreacion: eviFechaCreacion,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblEvidenciaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblEvidenciaTable,
      Evidencia,
      $$TblEvidenciaTableFilterComposer,
      $$TblEvidenciaTableOrderingComposer,
      $$TblEvidenciaTableAnnotationComposer,
      $$TblEvidenciaTableCreateCompanionBuilder,
      $$TblEvidenciaTableUpdateCompanionBuilder,
      (
        Evidencia,
        BaseReferences<_$AppBaseDeDatos, $TblEvidenciaTable, Evidencia>,
      ),
      Evidencia,
      PrefetchHooks Function()
    >;
typedef $$TblSeguimientovendedorTableCreateCompanionBuilder =
    TblSeguimientovendedorCompanion Function({
      Value<int> segId,
      required int venId,
      required double segLatitud,
      required double segLongitud,
      Value<String?> vendedorNombre,
      required DateTime segFechaCreacion,
    });
typedef $$TblSeguimientovendedorTableUpdateCompanionBuilder =
    TblSeguimientovendedorCompanion Function({
      Value<int> segId,
      Value<int> venId,
      Value<double> segLatitud,
      Value<double> segLongitud,
      Value<String?> vendedorNombre,
      Value<DateTime> segFechaCreacion,
    });

class $$TblSeguimientovendedorTableFilterComposer
    extends Composer<_$AppBaseDeDatos, $TblSeguimientovendedorTable> {
  $$TblSeguimientovendedorTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get segId => $composableBuilder(
    column: $table.segId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get venId => $composableBuilder(
    column: $table.venId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get segLatitud => $composableBuilder(
    column: $table.segLatitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get segLongitud => $composableBuilder(
    column: $table.segLongitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get vendedorNombre => $composableBuilder(
    column: $table.vendedorNombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get segFechaCreacion => $composableBuilder(
    column: $table.segFechaCreacion,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TblSeguimientovendedorTableOrderingComposer
    extends Composer<_$AppBaseDeDatos, $TblSeguimientovendedorTable> {
  $$TblSeguimientovendedorTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get segId => $composableBuilder(
    column: $table.segId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get venId => $composableBuilder(
    column: $table.venId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get segLatitud => $composableBuilder(
    column: $table.segLatitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get segLongitud => $composableBuilder(
    column: $table.segLongitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get vendedorNombre => $composableBuilder(
    column: $table.vendedorNombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get segFechaCreacion => $composableBuilder(
    column: $table.segFechaCreacion,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TblSeguimientovendedorTableAnnotationComposer
    extends Composer<_$AppBaseDeDatos, $TblSeguimientovendedorTable> {
  $$TblSeguimientovendedorTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get segId =>
      $composableBuilder(column: $table.segId, builder: (column) => column);

  GeneratedColumn<int> get venId =>
      $composableBuilder(column: $table.venId, builder: (column) => column);

  GeneratedColumn<double> get segLatitud => $composableBuilder(
    column: $table.segLatitud,
    builder: (column) => column,
  );

  GeneratedColumn<double> get segLongitud => $composableBuilder(
    column: $table.segLongitud,
    builder: (column) => column,
  );

  GeneratedColumn<String> get vendedorNombre => $composableBuilder(
    column: $table.vendedorNombre,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get segFechaCreacion => $composableBuilder(
    column: $table.segFechaCreacion,
    builder: (column) => column,
  );
}

class $$TblSeguimientovendedorTableTableManager
    extends
        RootTableManager<
          _$AppBaseDeDatos,
          $TblSeguimientovendedorTable,
          SeguimientoVendedor,
          $$TblSeguimientovendedorTableFilterComposer,
          $$TblSeguimientovendedorTableOrderingComposer,
          $$TblSeguimientovendedorTableAnnotationComposer,
          $$TblSeguimientovendedorTableCreateCompanionBuilder,
          $$TblSeguimientovendedorTableUpdateCompanionBuilder,
          (
            SeguimientoVendedor,
            BaseReferences<
              _$AppBaseDeDatos,
              $TblSeguimientovendedorTable,
              SeguimientoVendedor
            >,
          ),
          SeguimientoVendedor,
          PrefetchHooks Function()
        > {
  $$TblSeguimientovendedorTableTableManager(
    _$AppBaseDeDatos db,
    $TblSeguimientovendedorTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TblSeguimientovendedorTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$TblSeguimientovendedorTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TblSeguimientovendedorTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> segId = const Value.absent(),
                Value<int> venId = const Value.absent(),
                Value<double> segLatitud = const Value.absent(),
                Value<double> segLongitud = const Value.absent(),
                Value<String?> vendedorNombre = const Value.absent(),
                Value<DateTime> segFechaCreacion = const Value.absent(),
              }) => TblSeguimientovendedorCompanion(
                segId: segId,
                venId: venId,
                segLatitud: segLatitud,
                segLongitud: segLongitud,
                vendedorNombre: vendedorNombre,
                segFechaCreacion: segFechaCreacion,
              ),
          createCompanionCallback:
              ({
                Value<int> segId = const Value.absent(),
                required int venId,
                required double segLatitud,
                required double segLongitud,
                Value<String?> vendedorNombre = const Value.absent(),
                required DateTime segFechaCreacion,
              }) => TblSeguimientovendedorCompanion.insert(
                segId: segId,
                venId: venId,
                segLatitud: segLatitud,
                segLongitud: segLongitud,
                vendedorNombre: vendedorNombre,
                segFechaCreacion: segFechaCreacion,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TblSeguimientovendedorTableProcessedTableManager =
    ProcessedTableManager<
      _$AppBaseDeDatos,
      $TblSeguimientovendedorTable,
      SeguimientoVendedor,
      $$TblSeguimientovendedorTableFilterComposer,
      $$TblSeguimientovendedorTableOrderingComposer,
      $$TblSeguimientovendedorTableAnnotationComposer,
      $$TblSeguimientovendedorTableCreateCompanionBuilder,
      $$TblSeguimientovendedorTableUpdateCompanionBuilder,
      (
        SeguimientoVendedor,
        BaseReferences<
          _$AppBaseDeDatos,
          $TblSeguimientovendedorTable,
          SeguimientoVendedor
        >,
      ),
      SeguimientoVendedor,
      PrefetchHooks Function()
    >;

class $AppBaseDeDatosManager {
  final _$AppBaseDeDatos _db;
  $AppBaseDeDatosManager(this._db);
  $$TblUsuarioTableTableManager get tblUsuario =>
      $$TblUsuarioTableTableManager(_db, _db.tblUsuario);
  $$TblAsistenciaTableTableManager get tblAsistencia =>
      $$TblAsistenciaTableTableManager(_db, _db.tblAsistencia);
  $$TblClienteTableTableManager get tblCliente =>
      $$TblClienteTableTableManager(_db, _db.tblCliente);
  $$TblRutaTableTableManager get tblRuta =>
      $$TblRutaTableTableManager(_db, _db.tblRuta);
  $$TblVisitaTableTableManager get tblVisita =>
      $$TblVisitaTableTableManager(_db, _db.tblVisita);
  $$TblMarcarllegadavisitaTableTableManager get tblMarcarllegadavisita =>
      $$TblMarcarllegadavisitaTableTableManager(
        _db,
        _db.tblMarcarllegadavisita,
      );
  $$TblEvidenciaTableTableManager get tblEvidencia =>
      $$TblEvidenciaTableTableManager(_db, _db.tblEvidencia);
  $$TblSeguimientovendedorTableTableManager get tblSeguimientovendedor =>
      $$TblSeguimientovendedorTableTableManager(
        _db,
        _db.tblSeguimientovendedor,
      );
}
