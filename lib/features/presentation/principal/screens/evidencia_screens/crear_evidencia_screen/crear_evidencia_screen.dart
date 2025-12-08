import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/helpers/extensiones/loading_overlay_extension.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/evidencia_screens/crear_evidencia_screen/provider/crear_evidencia_screen_provider.dart';

class CrearEvidenciaScreen extends StatelessWidget {
  static const nombreRuta = '/crear-evidencia-screen';

  final int visitaId;

  const CrearEvidenciaScreen({super.key, required this.visitaId});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Registrar Evidencia"),
      vista: CrearEvidenciaView(visitaId: visitaId),
    );
  }
}

class CrearEvidenciaView extends ConsumerStatefulWidget {
  final int visitaId;

  const CrearEvidenciaView({super.key, required this.visitaId});

  @override
  ConsumerState<CrearEvidenciaView> createState() => _CrearEvidenciaViewState();
}

class _CrearEvidenciaViewState extends ConsumerState<CrearEvidenciaView> {
  final _formKey = GlobalKey<FormState>();
  String? nombreArchivoSeleccionado;

  void _validarYCrearEvidencia() {
    if (_formKey.currentState!.validate()) {
      final notifier = ref.read(
        crearEvidenciaScreenProvider(widget.visitaId).notifier,
      );

      notifier.onCrearEvidencia().ejecutarConLoading();
    }
  }

  Future<void> _seleccionarArchivo() async {
    final notifier = ref.read(
      crearEvidenciaScreenProvider(widget.visitaId).notifier,
    );

    final resultado = await notifier.pickFile();

    if (resultado != null) {
      setState(() {
        nombreArchivoSeleccionado = resultado;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      crearEvidenciaScreenProvider(widget.visitaId).select((s) => s.mensajeUi),
      (_, next) {
        if (next != null) {
          DialogoMensajeUI(mensajeUI: next).show(context);
        }
      },
    );

    ref.listen(
      crearEvidenciaScreenProvider(widget.visitaId).select((s) => s.eventoUI),
      (_, next) {
        if (next != null) {
          DialogoMensajeUI(mensajeUI: next).show(context);
          _formKey.currentState?.reset();
          setState(() {
            nombreArchivoSeleccionado = null;
          });
        }
      },
    );

    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// VISITA ID
              const CustomText.etiqueta(
                "Visita asociada:",
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                initialValue: widget.visitaId.toString(),
                enabled: false,
              ),
              const SizedBox(height: 24),

              /// TIPO DE EVIDENCIA
              const CustomText.etiqueta(
                "Tipo de Evidencia:",
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Ej: Selfie, Mercadería, Documento…",
                onChanged: (val) {
                  ref
                      .read(
                        crearEvidenciaScreenProvider(widget.visitaId).notifier,
                      )
                      .onCambioEviTipo(val);
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "El tipo de evidencia es obligatorio";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              /// OBSERVACIONES
              const CustomText.etiqueta("Observaciones:", color: Colors.black),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Detalles adicionales…",
                maxLines: 3,
                onChanged: (val) {
                  ref
                      .read(
                        crearEvidenciaScreenProvider(widget.visitaId).notifier,
                      )
                      .onCambioEviObservaciones(val);
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Debe ingresar observaciones";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              /// ARCHIVO
              const CustomText.etiqueta(
                "Archivo adjunto (opcional):",
                color: Colors.black,
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  Expanded(
                    child: Text(
                      nombreArchivoSeleccionado ??
                          "Ningún archivo seleccionado",
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _seleccionarArchivo,
                    icon: const Icon(Icons.attach_file),
                    label: const Text("Seleccionar"),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              /// BOTÓN REGISTRAR
              CustomElevatedButton(
                etiqueta: "Registrar Evidencia",
                icono: Icons.cloud_upload,
                expandir: true,
                onClick: _validarYCrearEvidencia,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
