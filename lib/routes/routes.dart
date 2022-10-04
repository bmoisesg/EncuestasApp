import 'package:encuentas/screens/crear_encuesta.dart';
import 'package:encuentas/screens/editar_encuesta_ind.dart';
import 'package:encuentas/screens/eliminar_encuesta.dart';
import 'package:encuentas/screens/editar_encuesta.dart';
import 'package:encuentas/screens/encuesta.dart';
import 'package:encuentas/screens/home.dart';
import 'package:encuentas/screens/resultados_encuestas.dart';
import 'package:encuentas/screens/resultados_ind.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/home': (BuildContext context) => const Home(),
  '/crear': (BuildContext context) => const Crear(),
  '/editar': (BuildContext context) => const EditarEncuesta(),
  '/eliminar': (BuildContext context) => const EliminarEncuesta(),
  '/ind': (BuildContext context) => const EditarInd(),
  '/resultados': (BuildContext context) => const ResultadoEncuesta(),
  '/ind_resultados': (BuildContext context) => const ResultadosInd(),
  '/encuesta': (BuildContext context) => const Encuesta(),
};
